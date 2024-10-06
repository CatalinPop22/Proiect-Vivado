library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity div1Hz is
    Port ( clk, r : in STD_LOGIC;
           clk1Hz : out STD_LOGIC);
end div1Hz;

architecture Behavioral of div1Hz is

signal state : STD_LOGIC_VECTOR (26 downto 0);

begin

process(CLK,R)
begin
   if R='1' then
   state <= "000" & X"000000";
   else
     if rising_edge(CLK) then
        if state = "101" & X"F5E0FF" then
            state <= "000" & X"000000";
        else
            state <= state+1;
        end if;
     end if;
   end if;         
end process;

CLK1Hz <= state(26);

end Behavioral;