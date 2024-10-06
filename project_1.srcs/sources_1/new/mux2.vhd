----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2023 03:55:19 PM
-- Design Name: 
-- Module Name: mux2 - Behavioral
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

entity mux2 is
    Port (
        i0 : in STD_LOGIC;
        i1 : in STD_LOGIC;
        a  : in STD_LOGIC;
        y  : out STD_LOGIC
    );
end entity mux2;

architecture Behavioral of mux2 is
begin
process(i0,i1,a)
begin

    if a = '1' then y <= i1;
     else y<= i0;
    end if;
    
end process;




end architecture Behavioral;