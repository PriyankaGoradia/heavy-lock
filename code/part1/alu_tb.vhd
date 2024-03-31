----------------------------------------------------------------------------------
-- Filename : display_controller.vhdl
-- Author : Antonio Alejandro Andara Lara
-- Date : 31-Oct-2023
-- Design Name: alu_tb
-- Project Name: ECE 410 lab 3 2023
-- Description : testbench for the ALU of the simple CPU design
-- Additional Comments:
-- Copyright : University of Alberta, 2023
-- License : CC0 1.0 Universal
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY alu_tb IS
END alu_tb;

ARCHITECTURE sim OF alu_tb IS
    SIGNAL alu_sel     : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    SIGNAL input_a     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL input_b     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL bits_rotate : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
    SIGNAL alu_out     : STD_LOGIC_VECTOR(7 DOWNTO 0);

    

BEGIN
-- **************************************************************
-- test all the ALU operations
    uut: ENTITY WORK.alu(Dataflow)
        PORT MAP( alu_sel         => alu_sel
                , input_a     => input_a
                , input_b     => input_b
                , bits_rotate => bits_rotate
                , alu_out     => alu_out
                );

    stim_proc: PROCESS
    BEGIN
        -- Test ALU operations:

        -- Direct output of input_a
        alu_sel <= "0000";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;

        -- Add cases for each ALU operation...
        alu_sel <= "0001";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "0010";
        bits_rotate <= "01";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "0011";
        bits_rotate <= "10";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "0100";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "0101";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "0110";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "0111";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "1000";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;
        
        alu_sel <= "1001";
        input_a <= "01100100";
        input_b <= "00110011";
        WAIT FOR 20 ns;

        WAIT;
    END PROCESS stim_proc;

END sim;
