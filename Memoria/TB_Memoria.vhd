--------------------------------------------------------------------------------
-- Create Date:   12:11:59 07/01/2022
-- Design Name:   
-- Module Name:   C:/Users/CEAS/Documents/Proyecto/Memoria/TB_Memoria.vhd
-- Project Name:  Memoria
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY TB_Memoria IS
END TB_Memoria;
 
ARCHITECTURE behavior OF TB_Memoria IS 

    COMPONENT Memoria2
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         we : IN  std_logic;
         rst : IN  std_logic;
         addr : IN  std_logic_vector(9 downto 0);
         di : IN  std_logic_vector(15 downto 0);
         do : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal clk : std_logic := '0';
   signal en : std_logic := '0';
   signal we : std_logic := '0';
   signal rst : std_logic := '0';
   signal addr : std_logic_vector(9 downto 0) := (others => '0');
   signal di : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal do : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria2 PORT MAP (
          clk => clk,
          en => en,
          we => we,
          rst => rst,
          addr => addr,
          di => di,
          do => do
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      we<='1';
		en<='1';
		rst<='0';
		addr<="1001110010";
		di<="1011110000000010";
      wait for clk_period;
		we<='0';
		en<='0';
		addr<="0110101100";
      wait;
   end process;

END;