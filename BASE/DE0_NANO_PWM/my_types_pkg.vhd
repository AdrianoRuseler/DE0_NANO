library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;



package my_types_pkg is
  type WORD_ARRAY is array(31 downto 0) of std_logic_vector(15 downto 0); 
  
  type ARRAY_8_24 is array(24 downto 1) of std_logic_vector(7 downto 0); 
    type ARRAY_9_24 is array(24 downto 1) of std_logic_vector(8 downto 0); 
  type ARRAY_10_24 is array(24 downto 1) of std_logic_vector(9 downto 0); 
  type ARRAY_12_24 is array(24 downto 1) of std_logic_vector(11 downto 0); 
  type ARRAY_24_24 is array(24 downto 1) of std_logic_vector(23 downto 0); 
  type ARRAY_2_24 is array(24 downto 1) of std_logic_vector(1 downto 0); 
  type ARRAY_21_24 is array(24 downto 1) of std_logic_vector(20 downto 0); 
  type ARRAY_16_24 is array(24 downto 1) of std_logic_vector(15 downto 0); 
    type ARRAY_17_24 is array(24 downto 1) of std_logic_vector(16 downto 0); 
  type ARRAY_18_24 is array(24 downto 1) of std_logic_vector(17 downto 0); 
      type ARRAY_20_24 is array(24 downto 1) of std_logic_vector(19 downto 0);
  
  type COMP_ARRAY is array(24 downto 1) of std_logic_vector(21 downto 0);
  type ARRAY_8_8 is array(7 downto 0) of std_logic_vector(7 downto 0);  
  type ARRAY_10_6 is array(6 downto 1) of std_logic_vector(9 downto 0);
  type ARRAY_12_6 is array(6 downto 1) of std_logic_vector(11 downto 0);
  type ARRAY_9_6 is array(6 downto 1) of std_logic_vector(8 downto 0);
  type ARRAY_3_6 is array(6 downto 1) of std_logic_vector(2 downto 0);
  type ARRAY_4_6 is array(6 downto 1) of std_logic_vector(3 downto 0);
  type ARRAY_8_6 is array(6 downto 1) of std_logic_vector(7 downto 0);
  type ARRAY_8_5_0 is array(5 downto 0) of std_logic_vector(7 downto 0);
  
  
  type ARRAY_16_16 is array(16 downto 1) of std_logic_vector(15 downto 0); 
  type ARRAY_3_16 is array(16 downto 1) of std_logic_vector(2 downto 0); 
	  
  type ARRAY_16_6 is array(6 downto 1) of std_logic_vector(15 downto 0); 
  type ARRAY_16x6_12 is array (12 downto 1) of 	ARRAY_16_6; 

  
  
  type OPP_GAMMA is array (27 downto 1) of std_logic_vector(28 downto 0);
  type OPP_PULSO is array (27 downto 1) of std_logic_vector(2 downto 0);
  
	 
end package;