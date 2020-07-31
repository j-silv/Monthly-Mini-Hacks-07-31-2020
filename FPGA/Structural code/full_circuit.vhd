-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
-- CREATED		"Fri Jul 31 10:21:28 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_circuit IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		LED_STATE :  OUT  STD_LOGIC
	);
END full_circuit;

ARCHITECTURE bdf_type OF full_circuit IS 

COMPONENT adder
	PORT(a : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
		 sum : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comparator
	PORT(a : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register_en
	PORT(d : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register_rst
	PORT(rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
LED_STATE <= SYNTHESIZED_WIRE_6;



b2v_inst : adder
PORT MAP(a => SYNTHESIZED_WIRE_7,
		 sum => SYNTHESIZED_WIRE_5);


b2v_inst1 : comparator
PORT MAP(a => SYNTHESIZED_WIRE_7,
		 q => SYNTHESIZED_WIRE_8);


b2v_inst2 : register_en
PORT MAP(d => SYNTHESIZED_WIRE_2,
		 en => SYNTHESIZED_WIRE_8,
		 clk => CLK,
		 q => SYNTHESIZED_WIRE_6);


b2v_inst3 : register_rst
PORT MAP(rst => SYNTHESIZED_WIRE_8,
		 clk => CLK,
		 d => SYNTHESIZED_WIRE_5,
		 q => SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_6);



END bdf_type;