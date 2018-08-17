-- datapath for microprocessor

-- *************************************************************************
-- ALU
-- *************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is -- Parte Atualizada
  port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         imm   : in std_logic_vector(3 downto 0);
			entrada1 : in std_logic_vector(3 downto 0); -- Registrador 1 para valores momentaneos
			entrada2 : in std_logic_vector(3 downto 0); -- Registrador 2 para ser utilizado pelo acumulador
         sel : in std_logic_vector(3 downto 0); -- Código da Operacao
			output: out STD_LOGIC_VECTOR (3 downto 0)
       );
end alu;

architecture bhv of alu is
begin
	process (rst, clk, sel, entrada1, entrada2) -- Parte Atualizada
	begin
	  
	  if(rst = '1') then
		output<="0000";
		
	  elsif (clk='1' and clk'event) then
			case(sel) is
			
				when "0000" =>	-- armazena RF no ACC
					output<=entrada1;
					
				when "0001" =>	-- armazena ACC no RF
					output<=entrada2;
					
				when "0010" =>	-- armazena o IMMEDIATE
					output <= imm;
					
				when "0011" => -- soma ACC e RF
					output<=entrada1 + entrada2;

				when "0100" => -- subtrai RF de ACC
					output<=entrada2 - entrada1;
					
				when "0101" => -- compara RF e ACC usando AND
					output<=entrada2 and entrada1;
					
				when "0110" => -- compara RF e ACC usando OR
					output<=entrada2 or entrada1;
					
				when "0111" => -- considerando que seja enviado ADRESS
					output<=entrada1;
					
				when "1000" => -- nega ACC e armazena no ACC
					output<=not(entrada2);
				
				when others =>
			end case;
			
		end if;
	end process;
end bhv;

-- *************************************************************************
-- O seguinte é um código para um ACCUMULATOR. você precisa descobrir
-- as interconexões com o datapath
-- *************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity acc is
  port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         input : in STD_LOGIC_VECTOR (3 downto 0);
         enb   : in STD_LOGIC;
         output: out STD_LOGIC_VECTOR (3 downto 0)
       );
end acc;

architecture bhv of acc is
signal temp : STD_LOGIC_VECTOR(3 downto 0);
begin
	process (rst, input, enb, clk)
	begin
		if (rst = '1') then
			output <= "0000";
		elsif (clk'event and clk = '1') then
				if (enb = '1') then 
					output <= input;
					temp <= input; 
				else
					output <= temp;
				end if;
		end if;
	end process;
end bhv;

-- ***********************************************************************
-- o seguinte é o código de um arquivo de REGISTRADOR. você pode usar seu próprio design.
-- você também precisa descobrir como conectar isso ao seu datapath.

-- a maneira como o rf funciona é: ele primeiro verifica a ativação e, em seguida, verifica
-- veja qual registrador está selecionado e envia a entrada para o arquivo.
-- caso contrário, a saída será o que estiver armazenado no registro selecionado.
-- ***********************************************************************
library IEEE;
use IEEE.std_logic_1164.all;

entity rf is
  port ( rst    : in STD_LOGIC;
         clk    : in STD_LOGIC;
         input  : in std_logic_vector(3 downto 0);
         sel    : in std_logic_vector(1 downto 0);
         enb    : in std_logic;
         output : out std_logic_vector(3 downto 0)
       );
		
end rf;

architecture bhv of rf is

signal out0, out1, out2, out3 : std_logic_vector(3 downto 0);

begin
	process (rst, clk)-- Parte Atualizada
	begin
	
	  if(rst = '1') then
		output<="0000";
	  elsif(clk'event and clk = '1')then
		 if enb = '0' then
		 
			case (sel) is 
			  when "00" => 
				 out0 <= input;
			  when "01" => 
				 out1 <= input;
			  when "10" => 
				 out2 <= input;
			  when "11" =>
				 out3 <= input;
			  when others =>
			end case;
			
		 else
		 
			case (sel) is
			  when "00" =>
				 output <= out0;
			  when "01" =>
				 output <= out1;
			  when "10" =>
				 output <= out2;
			  when "11" =>
				 output <= out3;
			  when others =>
			end case;
			
		 end if;
	  end if;
	end process;	
end bhv;
	
-- *************************************************************************
-- DATAPATH
-- *************************************************************************	
library IEEE;
use IEEE.std_logic_1164.all;

entity dp is -- Parte Atualizada
  port ( rst : in STD_LOGIC;
         clk : in STD_LOGIC;
         imm : in std_logic_vector(3 downto 0);
         select_OP : in std_logic_vector(3 downto 0);
			select_RF : in std_logic_vector(1 downto 0);
			enable_RF : in std_logic;
			enable_CC : in std_logic;
			output_4: out STD_LOGIC_VECTOR (3 downto 0)
       );
end dp;

architecture rtl2 of dp is

component alu is
  port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         imm   : in std_logic_vector(3 downto 0);
			entrada1 : in std_logic_vector(3 downto 0); 
			entrada2 : in std_logic_vector(3 downto 0);
         sel : in std_logic_vector(3 downto 0);
			output: out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

component rf 
 port ( rst    : in STD_LOGIC;
		  clk    : in STD_LOGIC;
		  input  : in std_logic_vector(3 downto 0);
		  sel    : in std_logic_vector(1 downto 0);
		  enb    : in std_logic;
		  output : out std_logic_vector(3 downto 0)
    );
end component;

component acc 
port ( rst   : in STD_LOGIC;
       clk   : in STD_LOGIC;
       input : in STD_LOGIC_VECTOR (3 downto 0);
       enb   : in STD_LOGIC;
       output: out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

-- Sinais do ALU
signal alu_out: std_logic_vector(3 downto 0);
signal entrada1_alu : std_LOGIC_VECTOR(3 downto 0);
signal entrada2_alu : std_LOGIC_VECTOR(3 downto 0);

-- Sinais do REGISTRADOR
signal enb_rf : std_logic;
signal entrada_rf: std_LOGIC_VECTOR(3 downto 0);
signal output_rf : std_logic_vector(3 downto 0);

-- Sinais do ACCUMULATOR
signal enb_acc :  STD_LOGIC;
signal output_acc: STD_LOGIC_VECTOR (3 downto 0);
signal entrada_acc : std_LOGIC_VECTOR(3 downto 0);

begin

	alu1: alu port map (rst, clk, imm, entrada1_alu, entrada2_alu, select_OP, alu_out);
	rf1 : rf port map(rst, clk, entrada_rf, select_RF, enable_RF, output_rf);
	acc1: acc port map(rst, clk, entrada_acc, enable_CC, output_acc);

	process (rst, clk, select_OP, output_rf, output_acc, alu_out, imm)
		begin

		-- isso você deve mudar para que a saída realmente
		-- vem do accumulator, por isso segue o
		-- conjunto de instruções. já que o acumulador é sempre
		-- Envolvidos queremos ser capazes de ver o
		-- resultados / mudanças de dados no acc.
		-- cuide do estado de reinicialização
		  
		  
		  if (rst='1') then
			output_4 <= "0000";
			end if;
			
			if (clk='1' and clk'event) then
				case select_OP is 
						-- DUVIDA !!! SABER SE ESTÁ  FALTANDO ALGO
					
					when "0000" =>	--armazena o REGISTRADOR no ACCUMULATOR
						entrada1_alu<= output_rf;
						entrada2_alu<="0000";
						entrada_acc <= alu_out;
					
					when "0001" => -- armazena o ACCUMULATOR no REGISTRADOR
						entrada1_alu<="0000";
						entrada2_alu<= output_acc;
						entrada_rf <= alu_out;
					
					when "0010" => -- armazena o IMMEDIATE
						entrada1_alu<= imm;
						entrada2_alu <= "0000";
						entrada_acc <= alu_out;
					
					when "0011" => -- soma ACCUMULATOR e REGISTRADOR
						entrada1_alu <= output_rf;
						entrada2_alu <= output_acc;
						entrada_acc<= alu_out;
					
					when "0100" =>	-- subtrai o ACCUMULATOR do REGISTRADOR
						entrada1_alu <= output_rf;
						entrada2_alu <= output_acc;
						entrada_acc <= alu_out;
					
					when "0101" => -- accumulator AND registrador
						entrada1_alu <= output_rf;
						entrada2_alu <= output_acc;
						entrada_acc <= alu_out;
					
					when "0110" => -- accumulator OR registrador
						entrada1_alu <= output_rf;
						entrada2_alu <= output_acc;
						entrada_acc <= alu_out;
					
					when "1000" => -- NOT accumulator
						entrada1_alu<="0000";
						entrada2_alu<= output_acc;
						entrada_acc <= alu_out;
					
					when others =>
				end case;
				
			end if;
		  
			output_4 <= alu_out;
		
   end process;
end rtl2;