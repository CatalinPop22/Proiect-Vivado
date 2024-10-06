----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2023 07:30:06 PM
-- Design Name: 
-- Module Name: automat2 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity automat2 is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR(2 downto 0));
end automat2;

architecture Behavioral of automat2 is

component mux2 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           a : in STD_LOGIC;
           y : out STD_LOGIC);
end component mux2;

component dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end component dff;

component inv is
    Port ( x : in STD_LOGIC;
           y : out STD_LOGIC);
end component inv;

component xor2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC);
end component xor2;

signal net1, net2, net3, netA,netB,netC:std_logic;
signal qint:std_logic_vector(2 downto 0); 

begin
q <= qint;

bistabil2: dff port map(clk => clk, d =>net1, r => r, q => qint(2));
bistabil1: dff port map(clk => clk, d =>net2, r => r, q => qint(1));
bistabil0: dff port map(clk => clk, d =>net3, r => r, q => qint(0));

M1: mux2 port map(i0=>netB, i1=>'0', a=>qint(2), y=>net1);
M2: mux2 port map(i0=>netA, i1=>netB ,a=>qint(2), y=>net2);
M3: mux2 port map(i0=>netC, i1=>'1', a=>qint(2), y=>net3);

I1: inv port map ( x => qint(0), y => netA);
I2: inv port map ( x => qint(1), y => netB);

X1: xor2 port map( a => qint(0), b => qint(1), f => netC); 
q <= qint;
end Behavioral;