library IEEE;
use IEEE.std_logic_1164.all;

entity messages_storage is
    port (
        -- 5 SWITCHES
        -- I/O: (R2 T1 U1 W2 R3)
        indx : in std_logic_vector(4 downto 0);

        -- 2 SWITCHES -- MULTIPLEXER CHANNEL
        -- I/O: (V16 V17)
        s : in std_logic_vector(1 downto 0);

        -- 4 DISPLAYS
        -- I/O: (W4 V4 U4 U2)
        display : out std_logic_vector(3 downto 0);

        -- 7 SEGMENTS
        -- I/O: (V7 W7 W6 U8 V8 U5 V5 U7) -- TIENE QUE SER EN ESTE ORDEN!!
        letter_out : out std_logic_vector(7 downto 0)
         );
end messages_storage;

architecture arch of messages_storage is

    signal letter_sigA: std_logic_vector(7 downto 0);
    signal letter_sigB: std_logic_vector(7 downto 0);
    signal letter_sigC: std_logic_vector(7 downto 0);
    signal letter_sigD: std_logic_vector(7 downto 0);

    begin
            
            msg1: entity work.SEVEN_SEG_MSG1 port map (
                msg_indx => indx,
                letter => letter_sigA);
            msg2: entity work.SEVEN_SEG_MSG2 port map (
                msg_indx => indx,
                letter => letter_sigB);
            msg3: entity work.SEVEN_SEG_MSG3 port map (
                msg_indx => indx,
                letter => letter_sigC);
            msg4: entity work.SEVEN_SEG_MSG4 port map (
                msg_indx => indx,
                letter => letter_sigD);
    
            mux: entity work.mux4a1 port map (
                IA=>letter_sigA,
                IB=>letter_sigB,
                IC=>letter_sigC,
                ID=>letter_sigD,
                S=>s,
                Y=>letter_out
                );
            
            deco: entity work.deco2a4A port map (
                S=>s,
                Y=>display
                );

        end arch;