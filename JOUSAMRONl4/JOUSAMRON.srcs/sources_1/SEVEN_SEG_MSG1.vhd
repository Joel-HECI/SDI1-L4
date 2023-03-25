    library IEEE;
    use IEEE.std_logic_1164.all;
   
    entity SEVEN_SEG_MSG1 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(7 downto 0)
            -- display: out std_logic_vector(3 downto 0)
        );

    end SEVEN_SEG_MSG1;

    architecture Behavioral of SEVEN_SEG_MSG1 is
        begin
        process(msg_indx)
        BEGIN
           
            -- JOE HERNANDEZ  SAM LOPEZ  RON BARRETO --
            -- v   w   x   y   z		dp	a	b	c	d	e	f	g
            -- 0   0   0   0   0	J	1	1	0	0	0	0	1	1
            -- 0   0   0   0   1	O	1	0	0	0	0	0	0	1
            -- 0   0   0   1   0	E	1	0	1	1	0	0	0	0
            -- 0   0   0   1   1	H	1	1	0	0	1	0	0	0
            -- 0   0   1   0   0	E	1	0	1	1	0	0	0	0
            -- 0   0   1   0   1	R	1	1	1	1	1	0	1	0
            -- 0   0   1   1   0	N	1	1	1	0	1	0	1	0
            -- 0   0   1   1   1	A	1	0	0	0	1	0	0	0
            -- 0   1   0   0   0	N	1	1	1	0	1	0	1	0
            -- 0   1   0   0   1	D	1	1	0	0	0	0	1	0
            -- 0   1   0   1   0	E	1	0	1	1	0	0	0	0
            -- 0   1   0   1   1	Z	1	0	0	1	0	0	1	0
            -- 0   1   1   0   0	S	1	0	1	0	0	1	0	0
            -- 0   1   1   0   1	A	1	0	0	0	1	0	0	0
            -- 0   1   1   1   0	M	1	0	1	0	1	0	1	1
            -- 0   1   1   1   1	L	1	1	1	1	0	0	0	1
            -- 1   0   0   0   0	O	1	0	0	0	0	0	0	1
            -- 1   0   0   0   1	P	1	0	0	1	1	0	0	0
            -- 1   0   0   1   0	E	1	0	1	1	0	0	0	0
            -- 1   0   0   1   1	Z	1	0	0	1	0	0	1	0
            -- 1   0   1   0   0	R	1	1	1	1	1	0	1	0
            -- 1   0   1   0   1	O	1	0	0	0	0	0	0	1
            -- 1   0   1   1   0	N	1	1	1	0	1	0	1	0
            -- 1   0   1   1   1	B	1	1	1	0	0	0	0	0
            -- 1   1   0   0   0	A	1	0	0	0	1	0	0	0
            -- 1   1   0   0   1	R	1	1	1	1	1	0	1	0
            -- 1   1   0   1   0	R	1	1	1	1	1	0	1	0
            -- 1   1   0   1   1	E	1	0	1	1	0	0	0	0
            -- 1   1   1   0   0	T	1	1	1	1	0	0	0	0
            -- 1   1   1   0   1	0	1	0	0	0	0	0	0	1
            
            case msg_indx is
            when x"00" => letter <= x"C3";
            when x"01" => letter <= x"81";
            when x"02" => letter <= x"B0";
            when x"03" => letter <= x"C8";
            when x"04" => letter <= x"B0";
            when x"05" => letter <= x"FA";
            when x"06" => letter <= x"EA";
            when x"07" => letter <= x"88";
            when x"08" => letter <= x"EA";
            when x"09" => letter <= x"C2";
            when x"0A" => letter <= x"B0";
            when x"0B" => letter <= x"92";
            when x"0C" => letter <= x"A4";
            when x"0D" => letter <= x"88";
            when x"0E" => letter <= x"AB";
            when x"0F" => letter <= x"F1";
            when x"10" => letter <= x"81";
            when x"11" => letter <= x"98";
            when x"12" => letter <= x"B0";
            when x"13" => letter <= x"92";
            when x"14" => letter <= x"FA";
            when x"15" => letter <= x"81";
            when x"16" => letter <= x"EA";
            when x"17" => letter <= x"E0";
            when x"18" => letter <= x"88";
            when x"19" => letter <= x"FA";
            when x"1A" => letter <= x"FA";
            when x"1B" => letter <= x"B0";
            when x"1C" => letter <= x"F0";
            when x"1D" => letter <= x"81";
            when others => letter <= x"FF";
        
        end case;
        end process;
    end Behavioral;

    