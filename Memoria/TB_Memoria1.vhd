--------------------------------------------------------------------------------
-- Create Date:   14:38:35 07/01/2022
-- Design Name:   
-- Module Name:   C:/Users/CEAS/Documents/Proyecto/Memoria/TB_Memoria1.vhd
-- Project Name:  Memoria
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Memoria1 IS
END TB_Memoria1;
 
ARCHITECTURE behavior OF TB_Memoria1 IS 

    COMPONENT Memoria1
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0); 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria1 PORT MAP (
          salida => salida,
          direccion => direccion
        );

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 100 ns;	
		direccion <= "01";
		wait for 100 ns;
		direccion <= "00";
		wait for 100 ns;
		direccion <= "11";
		wait for 100 ns;
		direccion <= "10";
      wait;
   end process;

END;