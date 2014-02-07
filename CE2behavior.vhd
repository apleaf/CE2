----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Alex Leaf
-- 
-- Create Date:    21:59:31 02/06/2014 
-- Design Name: behavioral for the structure
-- Module Name:    CE2behavior - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: behavioral implementation insteadof structural
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CE2behavior is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end CE2behavior;

architecture Behavioral of CE2behavior is

signal I0_NOT, I1_NOT: STD_LOGIC;

begin

I0_NOT <= not I0;
I1_NOT <= not I1;

Y0 <= I0_NOT and I1_NOT and EN;
Y1 <= I0 and I1_NOT and EN;
Y2 <= I0_NOT and I1 and EN;
Y3 <= I0 and I1 and EN;



end Behavioral;

