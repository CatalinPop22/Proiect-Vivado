----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/22/2023 09:21:37 PM
-- Design Name: 
-- Module Name: test2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test2 is
--  Port ( );
end test2;

architecture Behavioral of test2 is
  component automat2
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out std_logic_vector(2 downto 0 ));
  end component;





signal clk, r:std_logic;
signal q:std_logic_vector(2 downto 0);


begin
U: automat2 port map(clk=>clk, r=>r, q=>q);


process
begin 
clk<= '0'; wait for 1 ns;
clk<= '1'; wait for 1 ns;

end process;
process
begin 
r <= '0'; wait for 4ns;
r <= '1'; wait for 1500ns;

end process;
end Behavioral;
