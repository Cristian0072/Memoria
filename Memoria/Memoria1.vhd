----------------------------------------------------------------------------------
-- Create Date:    14:35:28 07/01/2022 
-- Design Name: 
-- Module Name:    Memoria1 - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memoria1 is
	port (salida : out std_logic_vector(1 downto 0);
		direccion: in std_logic_vector (1 downto 0));
end Memoria1;

architecture Behavioral of Memoria1 is
type datos is array (0 to 3) of std_logic_vector(1 downto 0);
	constant rom : datos := ("11", "10", "00", "01");
	begin
	salida <= rom(to_integer(unsigned(direccion)));
end Behavioral;

