    library IEEE;
    use IEEE.std_logic_1164.all;
   
    entity SEVEN_SEG_MSG4 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(7 downto 0)
            -- display: out std_logic_vector(3 downto 0)
        );

    end SEVEN_SEG_MSG4;

    architecture Behavioral of SEVEN_SEG_MSG4 is
        begin
            process (msg_indx)
            begin

            -- ME QUEDO GRANDE MUCHACHOS --
            
            -- v   w   x   y   z        dp  a	b	c	d	e	f	g
            -- 0   0   0   0   0    M	1	0	1	0	1	0	1	1
            -- 0   0   0   0   1    E	1	0	1	1	0	0	0	0
            -- 0   0   0   1   0    Q	1	0	0	0	1	1	0	0
            -- 0   0   0   1   1    U	1	1	0	0	0	0	0	1
            -- 0   0   1   0   0    E	1	0	1	1	0	0	0	0
            -- 0   0   1   0   1    D	1	1	0	0	0	0	1	0
            -- 0   0   1   1   0    O	1	0	0	0	0	0	0	1
            -- 0   0   1   1   1    G	1	0	1	0	0	0	0	0
            -- 0   1   0   0   0    R	1	1	1	1	1	0	1	0
            -- 0   1   0   0   1    A	1	0	0	0	1	0	0	0
            -- 0   1   0   1   0    N	1	1	1	0	1	0	1	0
            -- 0   1   0   1   1    D	1	1	0	0	0	0	1	0
            -- 0   1   1   0   0    E	1	0	1	1	0	0	0	0
            -- 0   1   1   0   1    M	1	0	1	0	1	0	1	1
            -- 0   1   1   1   0    U	1	1	0	0	0	0	0	1
            -- 0   1   1   1   1    C	1	0	1	1	0	0	0	1
            -- 1   0   0   0   0    H	1	1	0	0	1	0	0	0
            -- 1   0   0   0   1    A	1	0	0	0	1	0	0	0
            -- 1   0   0   1   0    C	1	0	1	1	0	0	0	1
            -- 1   0   0   1   1    H	1	1	0	0	1	0	0	0
            -- 1   0   1   0   0    O	1	0	0	0	0	0	0	1
            -- 1   0   1   0   1    S	1	0	1	0	0	1	0	0
            
            case msg_indx is
            when x"00" => letter <= x"AB";
            when x"01" => letter <= x"B0";
            when x"02" => letter <= x"8C";
            when x"03" => letter <= x"C1";
            when x"04" => letter <= x"B0";
            when x"05" => letter <= x"C2";
            when x"06" => letter <= x"81";
            when x"07" => letter <= x"A0";
            when x"08" => letter <= x"FA";
            when x"09" => letter <= x"88";
            when x"0A" => letter <= x"EA";
            when x"0B" => letter <= x"C2";
            when x"0C" => letter <= x"B0";
            when x"0D" => letter <= x"AB";
            when x"0E" => letter <= x"C1";
            when x"0F" => letter <= x"B1";
            when x"10" => letter <= x"C8";
            when x"11" => letter <= x"88";
            when x"12" => letter <= x"B1";
            when x"13" => letter <= x"C8";
            when x"14" => letter <= x"81";
            when x"15" => letter <= x"A4";
           
            when others => letter <= x"FF";
        
            end case;
        end process;
    end Behavioral;