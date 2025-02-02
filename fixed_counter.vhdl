```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fixed_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count : out integer
  );
end entity fixed_counter;

architecture behavioral of fixed_counter is
  signal internal_count : unsigned(9 downto 0) := (others => '0'); -- Increased size to prevent overflow
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= (others => '0');
    elsif rising_edge(clk) then
      internal_count <= internal_count + 1;
    end if;
  end process;
  count <= to_integer(internal_count); -- Convert back to integer for output (check for potential overflow here if needed)
  
end architecture behavioral;
```