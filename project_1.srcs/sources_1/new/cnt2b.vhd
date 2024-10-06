----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2023 09:53:30 PM
-- Design Name: 
-- Module Name: cnt2b - Behavioral
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

entity cnt2b is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q2 : out STD_LOGIC;
           q1 : out STD_LOGIC;
           q0 : out STD_LOGIC);
end cnt2b;

architecture Behavioral of cnt2b is

signal q2int, q1int, q0int,d2,d1,d0,clk1Hz : std_logic; 
component dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end component dff;

component div1Hz is
    Port ( clk, r : in STD_LOGIC;
           clk1Hz : out STD_LOGIC);
end component div1Hz;

component inv is
    Port ( x : in STD_LOGIC;
           y : out STD_LOGIC);
end component inv;

component nor2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC);
end component nor2;

component or2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC);
end component or2;

component xor2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC);
end component xor2;


begin
 



end Behavioral;
