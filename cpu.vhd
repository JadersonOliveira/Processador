-- *************************************************************************
--Display para mostrar as OPERAÇÕES
-- *************************************************************************	
library IEEE;
use IEEE.std_logic_1164.all;

entity display is 
port(
	OP : in std_logic_vector(3 downto 0);
	HEX0 : out std_logic_vector(6 downto 0);
	HEX1 : out std_logic_vector(6 downto 0);
	HEX2: out std_logic_vector(6 downto 0);
	HEX3: out std_logic_vector(6 downto 0));

end display;

architecture estrutura of display is

begin

	process(OP)
	begin

		case OP is 
			
			when "0000" => -- MOVA Rd
				HEX0 <= "1000000";
				HEX1 <= "1000000";
				HEX2 <= "1000000";
				HEX3 <= "1000000";
			
			when "0001" => -- MOVR Rd
				HEX0 <= "1000000";
				HEX1 <= "1000000";
				HEX2 <= "1000000";
				HEX3 <= "1111001";
			
			when "0010" => -- LOAD Imm
				HEX0 <= "1000000";
				HEX1 <= "1000000";
				HEX2 <= "1111001";
				HEX3 <= "1000000";
			
			when "0011" => -- ADD Rd
				HEX0 <= "1000000";
				HEX1 <= "1000000";
				HEX2 <= "1111001";
				HEX3 <= "1111001";
			
			when "0100" => -- SUB Rd 0010
				HEX0 <= "1000000";
				HEX1 <= "1111001";
				HEX2 <= "1000000";
				HEX3 <= "1000000";
			
			when "0101" => -- ANDR Rd
				HEX0 <= "1000000";
				HEX1 <= "1111001";
				HEX2 <= "1000000";
				HEX3 <= "1111001";
			
			when "0110" => -- ORR Rd
				HEX0 <= "1000000";
				HEX1 <= "1111001";
				HEX2 <= "1111001"; 
				HEX3 <= "1000000";
			
			when "0111" => -- JMP Address
				HEX0 <= "1000000";
				HEX1 <= "1111001";
				HEX2 <= "1111001";
				HEX3 <= "1111001";
		
			when "1000" => -- INV
				HEX0 <= "1111001";
				HEX1 <= "1000000";
				HEX2 <= "1000000";
				HEX3 <= "1000000";
		
			when "1001" => -- HALT
				HEX0 <= "1111001";
				HEX1 <= "1000000";
				HEX2 <= "1000000";
				HEX3 <= "1111001";
			
			when others => -- deixa tudo apagado
				HEX0 <= "1111111";
				HEX1 <= "1111111";
				HEX2 <= "1111111";
				HEX3 <= "1111111";
			
		end case;

	end process;
end estrutura;

-- *************************************************************************
--Conversor para mostrar os RESULTADOS (em hexadecimal) das OPERAÇÕES
-- *************************************************************************	
library IEEE;
use ieee.std_LOGIC_1164.all;
 
entity conversor is
port(
	entradaConv : in std_LOGIC_VECTOR( 3 downto 0);
	HEX4 : out std_LOGIC_VECTOR(6 downto 0);
	HEX5 : out std_LOGIC_VECTOR(6 downto 0));

end;

architecture funcionamento of conversor is

signal saida_HEX4: std_LOGIC_VECTOR(6 downto 0);
signal saida_HEX5 : std_LOGIC_VECTOR(6 downto 0);

begin 

process( entradaConv)

begin

	case entradaConv is

		when "0000" => --0
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "1000000";

		when "0001" => --1
			saida_HEX4  <= "1000000";
			saida_HEX5 <= "1111001"; 

		when "0010" => --2
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0100100"; 

		when "0011" => --3
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0110000"; 

		when "0100" => --4 
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0011001"; 

		when "0101" => --5
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0010010"; 

		when "0110" => --6
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0000010"; 

		when "0111" => --7
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "1111000"; 

		when "1000" => --8
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0000000";

		when "1001" => --9
			saida_HEX4 <= "1000000";
			saida_HEX5 <= "0010000";

		when "1010" => --10
			saida_HEX4 <= "1111001"; 
			saida_HEX5 <= "1000000";

		when "1011" => --11
			saida_HEX4 <= "1111001"; 
			saida_HEX5 <= "1111001"; 

		when "1100" => --12
			saida_HEX4 <= "1111001"; 
			saida_HEX5 <= "0100100"; 

		when "1101" => --13
			saida_HEX4 <= "1111001"; 
			saida_HEX5 <= "0110000"; 

		when "1110" => --14
			saida_HEX4 <= "1111001"; 
			saida_HEX5 <= "0011001"; 

		when "1111" => --15
			saida_HEX4 <= "1111001"; 
			saida_HEX5 <= "0010010"; 

	end case;
end process;

	HEX4 <= saida_HEX4;
	HEX5 <= saida_HEX5;

end funcionamento;

-- *************************************************************************
-- CPU (entidade de nível superior)
-- *************************************************************************	
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity cpu is
   port ( rst: in STD_LOGIC;
			 start: in STD_LOGIC;
          clk: in STD_LOGIC;
			 display_hex0 : out std_LOGIC_VECTOR(6 downto 0);
			 display_hex1 : out std_LOGIC_VECTOR(6 downto 0);
			 display_hex2: out std_LOGIC_VECTOR(6 downto 0);
			 display_hex3: out std_LOGIC_VECTOR(6 downto 0);
			 conversor_hex4 : out std_LOGIC_VECTOR(6 downto 0);
			 conversor_hex5 : out std_LOGIC_VECTOR(6 downto 0)
          -- adicionar portas conforme necessário
        );
end cpu;

architecture struc of cpu is

component ctrl 
   port ( rst: in STD_LOGIC;
    	    start: in STD_LOGIC;
          clk: in STD_LOGIC;
          imm: out std_logic_vector(3 downto 0);
          select_OP: out std_logic_vector(3 downto 0); -- Seleciona a operação DP
			 select_RF: out std_logic_vector(1 downto 0); -- Seleciona o Registrador
			 enable_RF: out std_logic; -- Habilita o Registrador
			 enable_CC: out std_logic -- Habilita o accumulator	
        );
end component;

component conversor 
port(
	entradaConv : in std_LOGIC_VECTOR( 3 downto 0);
	HEX4 : out std_LOGIC_VECTOR(6 downto 0);
	HEX5 : out std_LOGIC_VECTOR(6 downto 0));

end component;

component display 
port(
	OP : in std_logic_vector(3 downto 0);
	HEX0 : out std_logic_vector(6 downto 0);
	HEX1 : out std_logic_vector(6 downto 0);
	HEX2: out std_logic_vector(6 downto 0);
	HEX3: out std_logic_vector(6 downto 0));

end component;

component dp
   port ( rst: in STD_LOGIC;
          clk: in STD_LOGIC;
			 imm: in std_logic_vector(3 downto 0);
          select_OP : in std_logic_vector(3 downto 0);
			 select_RF : in std_logic_vector(1 downto 0);
			 enable_RF : in std_logic;
			 enable_CC : in std_logic;
			 output_4: out STD_LOGIC_VECTOR (3 downto 0)
        );
end component;

signal immediate : std_logic_vector(3 downto 0);
signal cpu_out : std_logic_vector(3 downto 0);
signal selec_OP : std_logic_vector(3 downto 0);
signal selec_RF: std_logic_vector(1 downto 0);
signal enable_RF: std_LOGIC;
signal enable_ACC: std_LOGIC;
-- Sinais Display
signal dis_hex0, dis_hex1, dis_hex2, dis_hex3: std_LOGIC_VECTOR(6 downto 0);
signal conv_hex4, conv_hex5: std_LOGIC_VECTOR(6 downto 0); 

begin

  controller: ctrl port map(rst, start, clk, immediate, selec_OP, selec_RF, enable_RF, enable_ACC);
  datapath: dp port map(rst, clk, immediate, selec_OP, selec_RF, enable_RF, enable_ACC, cpu_out);
  d1: display port map(selec_OP, dis_hex3, dis_hex2, dis_hex1, dis_hex0);
  c1: conversor port map(cpu_out, conv_hex5, conv_hex4);

  process(rst, clk, dis_hex0, dis_hex1, dis_hex2, dis_hex3, conv_hex4, conv_hex5)
  begin
	
	 if(rst ='1') then
		conversor_hex4 <= "1000000";
		conversor_hex5 <= "1000000";
    elsif(clk'event and clk='1') then
		display_hex0 <= dis_hex0;	
		display_hex1 <= dis_hex1;
		display_hex2 <= dis_hex2;
		display_hex3 <= dis_hex3;
		conversor_hex4 <= conv_hex4;
		conversor_hex5 <= conv_hex5;
    end if;
  end process;	
  
end struc;
