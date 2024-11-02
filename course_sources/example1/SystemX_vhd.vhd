library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SystemX_vhd is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F : out STD_LOGIC);
end SystemX_vhd;

architecture Behavioral of SystemX_vhd is
    signal ABC : std_logic_vector(2 downto 0);
begin
    ABC <= A & B & C;
    process (ABC) begin
        case (ABC) is
            when "000"  => F <= '1';
            when "010"  => F <= '1';
            when "110"  => F <= '1';
            when others => F <= '0';
        end case;
    end process;
end Behavioral;
