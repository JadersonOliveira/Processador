-- controller
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ctrl is
  port ( rst   : in STD_LOGIC;
         start : in STD_LOGIC;
         clk   : in STD_LOGIC;       
         imm   : out std_logic_vector(3 downto 0); -- Entrada do datapath
			select_OP: out std_logic_vector(3 downto 0); -- Seleciona a operação DP
			select_RF: out std_logic_vector(1 downto 0); -- Seleciona o Registrador
			enable_RF: out std_logic; -- Habilita o Registrador
			enable_CC: out std_logic -- Habilita o accumulator	
       );
end ctrl;

architecture fsm of ctrl is

	type state_type is (s0,s1,s2,s3,done);
	signal state : state_type; 		

	constant mova : std_logic_vector(3 downto 0) := "0000";	-- s5
	constant movr : std_logic_vector(3 downto 0) := "0001";	--	s6
	constant load : std_logic_vector(3 downto 0) := "0010";	--	s7
	constant add  : std_logic_vector(3 downto 0) := "0011";	--	s8
   constant sub  : std_logic_vector(3 downto 0) := "0100";	--	s9
	constant andr : std_logic_vector(3 downto 0) := "0101";	--	s10
   constant orr  : std_logic_vector(3 downto 0) := "0110";	--	s11
   constant jmp  : std_logic_vector(3 downto 0) := "0111";	--	s12
	constant inv  : std_logic_vector(3 downto 0) := "1000";	--	s13
	constant halt : std_logic_vector(3 downto 0) := "1001";	--	done


	-- à medida que você adiciona mais código para seus algoritmos, certifique-se de aumentar
	-- tamanho da matriz. ie. 2 linhas de código aqui, significa tamanho de array de 0 a 1.
	type PM_BLOCK is array (0 to 5) of std_logic_vector(7 downto 0);
	constant PM : PM_BLOCK := (	
	-- Este algoritmo carrega um valor imediato de 4 e depois stop
	
	 "00100101",   -- load 5
	 "00010000", 	--move acc para rf[00]							
	-- "00100010", 	--load 2
	-- "00110000", --soma acc + rf[00]	OK!
	 --"10000000", -- inverter			+-OK!			***OBS -> ele inverte tambem o valor do endereco do registrador  para mais de um numero / ***tem que inverter apenas o load seguido do move acc para rf
	-- "01000000", 	--sub acc e rf[00]  +-OK!  		***OBS -> a subtracao funciona corretamente seguido de uma soma
	 		
	 
	-- "01100000", -- accumulator OR registrador[00]  OK!
	-- "01010000", -- accumulator AND registrador[00] OK!
	 
	-- "01110000", -- jmp pc=adress OK!
	 "10011111"		-- halt OK!
	 
--    "00100100",   -- load 4
--	 "10011111"		-- halt
    );
  		 
begin
	process (clk, rst)
	
	variable IR : std_logic_vector(7 downto 0);
	variable OPCODE : std_logic_vector( 3 downto 0);
	variable ADDRESS : std_logic_vector (3 downto 0);
	variable PC : integer;
    
	begin
	
		if(rst='1') then
			imm<="0000";
		elsif(clk'event and clk = '1') then			
      
			case state is
				
				when s0 => -- Inicio 
				 PC := 0;	-- zera o contador
				 imm <= "0000";
				 if start = '1' then
					state <= s1;
				 else 
					state <= s0;
				 end if;
				 
				when s1 => -- buscar instrução
				 IR := PM(PC);
				 OPCODE := IR(7 downto 4);
				 ADDRESS:= IR(3 downto 0);
				 state <= s2;
				 
				when s2 =>				-- increment PC
				 PC := PC + 1;
				 state <= s3;
							
				when s3 =>	-- Decodificacao 
					
					case OPCODE IS
						when mova => -- move o registrador para o acumulador  
							select_OP <= "0000"; -- Seleciona a operaçao
							select_RF <= ADDRESS(3 downto 2); -- Indica o registrador
							enable_CC <= '1';	-- Habilita o accumulator
							enable_RF <= '1';	--	Habilita o registrador
							state <= s1;
						
						when movr => -- move acumulador para registrador
							select_OP <= "0001";
							select_RF <= ADDRESS(3 downto 2); 
							enable_CC <= '1'; 
							enable_RF <= '1';
							state <= s1;
						
						when load => -- Load
							select_OP <= "0010";							
							enable_CC <= '1'; 
							enable_RF <= '0';
							imm <= ADDRESS;	-- set the immediate port
							state <= s1;	
						 
						when add => -- Realiza Soma
							select_OP <= "0011";
							select_RF <= ADDRESS(3 downto 2); 
							enable_CC <= '1'; 
							enable_RF <= '1';
							state <= s1;
						 
						when sub => --Realiza Subtraçao
							select_OP <= "0100";
							select_RF <= ADDRESS(3 downto 2); 
							enable_CC <= '1'; 
							enable_RF <= '1';
							state <= s1;
						 
						when andr => -- And
							select_OP <= "0101";
							select_RF <= ADDRESS(3 downto 2); 
							enable_CC <= '1'; 
							enable_RF <= '1';
							state <= s1;
						 
						when orr => -- Or
							select_OP <= "0110";
							select_RF <= ADDRESS(3 downto 2); 
							enable_CC <= '1'; 
							enable_RF <= '1';
							state <= s1;
						 
						when jmp => --Jump
							select_OP <= "0111";
							PC := conv_integer(ADDRESS);
							enable_CC <= '0'; 
							enable_RF <= '0';
							state <= s1;
						 
						when inv => --Inv
							select_OP <= "1000";
							enable_CC <= '1'; 
							enable_RF <= '0';
							state <= s1;
						 
						when halt => --Halt
							select_OP <= "1001";
							state <= done;
						  
						when others => 
							null;
					end case;
					
				when others =>
					null;
			end case;
			
    end if;
  end process;				
end fsm;