--
--  File: SimUAid_Simulation_Package.vhd
--

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


package SimUAid_simulation_pack is


        component and2 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
        end component;

        component and3  
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
        end component;

        component and4
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
        end component;

        component and5
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
        end component;                         
        
        component or2
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
        end component;

        component or3 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
        end component;

        component or4 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
        end component;

        component or5 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
        end component;

        component nand2
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
        end component;

        component nand3
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
        end component;

        component nand4
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
        end component;

        component nand5
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
        end component;

        component nor2  
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
        end component;

        component nor3 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
        end component;

        component nor4 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
        end component;

        component nor5 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
        end component;

        component xor2
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
        end component;

        component xnor2
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
        end component;

        component inverter
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: out STD_LOGIC
        );
        end component;
        
        component Dflipflop 
        generic (Delay: time);
        port (
                CLK: in STD_LOGIC;
             D: in STD_LOGIC;
                 SN: in STD_LOGIC;
                RN: in STD_LOGIC;
             Q: out STD_LOGIC;
                   QN: out STD_LOGIC
        );
        end component;

        component JKflipflop
        generic (Delay: time);
        port (
                CLK: in STD_LOGIC;
                J: in STD_LOGIC;
                K: in STD_LOGIC;
                SN: in STD_LOGIC;
                RN: in STD_LOGIC;
                Q: out STD_LOGIC;
                QN: out STD_LOGIC
        );
        end component;

        
        component Counter
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                    En : in STD_LOGIC;
                    CLRN: in STD_LOGIC;        -- negative logic 
                     COUNT: out STD_LOGIC_VECTOR(n-1 downto 0);                        
                 K: out STD_LOGIC
        );
        end component;        
        
        component LoadableCounter           
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                    En, LDN: in STD_LOGIC;
                 CLRN: in STD_LOGIC;        -- negative logic 
                  DIN: in STD_LOGIC_VECTOR(n-1 downto 0);
                     COUNT: out STD_LOGIC_VECTOR(n-1 downto 0);                        
                 K: out STD_LOGIC
        );
        end component;
        
        component nbitRegister                                 
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                    LD: in STD_LOGIC;
                    CLR: in STD_LOGIC;     
                     DIN: in STD_LOGIC_VECTOR(n-1 downto 0);
                     QOUT: out STD_LOGIC_VECTOR(n-1 to 0)                        
        );
        end component;


        component NBitAdder                         
        generic (Delay: time; n: integer);
        port (
                    CIN: in STD_LOGIC;     
                  IN1: in STD_LOGIC_VECTOR(n-1 downto 0);
                 IN2: in STD_LOGIC_VECTOR(n-1 downto 0);
                     OUT1: out STD_LOGIC_VECTOR(n-1 downto 0);                                        
                 COUT: out STD_LOGIC
        );
        end component;


        component NWideMux
        generic (Delay: time; n: integer);
        port (
       SEL: in STD_LOGIC;
       A, B :in STD_LOGIC_VECTOR (n-1 downto 0);
       MUX_OUT: out STD_LOGIC_VECTOR (n-1 downto 0)
        );
        end component;

        component ShiftRegLS                  
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
             SHIFTIN: in STD_LOGIC;
                 LoadIn: in STD_LOGIC_VECTOR(n-1 downto 0);
                 LD : in STD_LOGIC;         
                 LS_En: in STD_LOGIC;
                 CLR : in STD_LOGIC;
              DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
        end component;

        component ShiftRegRS                  
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
             SHIFTIN: in STD_LOGIC;
                 LoadIn: in STD_LOGIC_VECTOR(n-1 downto 0);
                 LD : in STD_LOGIC;         
                 RS_En: in STD_LOGIC;
                 CLR : in STD_LOGIC;
              DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
        end component;

        component ShiftRegBidir            
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                 LS_En: in STD_LOGIC;
                 RS_En: in STD_LOGIC;
             SHIFTIN_from_right_to_left: in STD_LOGIC;
                 LoadIn: in STD_LOGIC_VECTOR(n-1 downto 0);
                 LD : in STD_LOGIC;         
                 CLR : in STD_LOGIC;
             SHIFTIN_from_left_to_right: in STD_LOGIC;
              DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
        end component;


        component NBitTristate                        
        generic (Delay: time; n: integer);
        port (
       ENABLE: in STD_LOGIC;
       DIN: in STD_LOGIC_VECTOR (n-1 downto 0);
       DOUT: out STD_LOGIC_VECTOR (n-1 downto 0)
        );
        end component;


        component complementer
        generic (Delay: time; n: integer);
        port (
       ENABLE: in STD_LOGIC;
       DIN: in STD_LOGIC_VECTOR(n-1 downto 0);
       DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
        end component;                         


        component FullAdder 
        generic (Delay: time);
        port (
                X: in STD_LOGIC;
                Y: in STD_LOGIC;
                Cin: in STD_LOGIC;
                Cout: out STD_LOGIC;
                Sum: out STD_LOGIC
        );
        end component;

        component Decoder_2_to_4
        generic (Delay: time);
        port (
       D_IN: in STD_LOGIC_VECTOR(1 downto 0); 
       D_OUT: out STD_LOGIC_VECTOR(3 downto 0)
        );
        end component;

        component Decoder_3_to_8
        generic (Delay: time);
        port (
       D_IN: in STD_LOGIC_VECTOR(2 downto 0); 
       D_OUT: out STD_LOGIC_VECTOR(7 downto 0)
        );
        end component;
        
        component MUX_2_to_1                           -- CBNWideMux
        generic (Delay: time);
        port (
       MUX_IN :in STD_LOGIC_VECTOR (1 downto 0);
       SEL: in STD_LOGIC;
       MUX_OUT: out STD_LOGIC
        );
        end component;                

        component MUX_4_to_1                           -- CBNWideMux
        generic (Delay: time);
        port (
       MUX_IN : in STD_LOGIC_VECTOR(3 downto 0);
       SEL: in STD_LOGIC_VECTOR(1 downto 0);
       MUX_OUT: out STD_LOGIC
        );
        end component;                

        component MUX_8_to_1                           -- CBNWideMux
        generic (Delay: time);
        port (
       MUX_IN :in STD_LOGIC_VECTOR(7 downto 0);
       SEL: in STD_LOGIC_VECTOR(2 downto 0);
       MUX_OUT: out STD_LOGIC
        );
        end component;                


        component tristateBuf
        generic (Delay: time);
        port (
       ENABLE: in STD_LOGIC;
       DIN: in STD_LOGIC;
       DOUT: out STD_LOGIC
        );
        end component;                         

        end SimUAid_simulation_pack;


package body SimUAid_simulation_pack is


end SimUAid_simulation_pack;


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 2 Input And gate
entity and2 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
end and2;
architecture behavior of and2 is   
begin
        C <= A and B after Delay;        
end behavior;
 

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 3 Input And gate
entity and3 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
end and3;
architecture behavior of and3 is   
begin
        D <= A and B and C after Delay;        
end behavior;


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 4 Input And gate
entity and4 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
end and4;
architecture behavior of and4 is   
begin
        E <= A and B and C and D after Delay;        
end behavior;
 

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 5 Input And gate
entity and5 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
end and5;
architecture behavior of and5 is   
begin
        F <= A and B and C and D and E after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 2 Input Or gate
entity or2 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
end or2;
architecture behavior of or2 is   
begin
        C <= A or B after Delay;        
end behavior;
 



library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 3 Input Or gate
entity or3 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
end or3;
architecture behavior of or3 is   
begin
        D <= A or B or C after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;                                                                         
-- 4 Input Or gate
entity or4 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
end or4;
architecture behavior of or4 is   
begin
        E <= A or B or C or D after Delay;        
end behavior;
 

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 5 Input Or gate
entity or5 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
end or5;
architecture behavior of or5 is   
begin
        F <= A or B or C or D or E after Delay;        
end behavior;
 

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 2 Input nand gate
entity nand2 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
end nand2;
architecture behavior of nand2 is   
begin
        C <= A nand B after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 3 Input nand gate
entity nand3 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
end nand3;
architecture behavior of nand3 is   
begin
        D <= not(A and B and C) after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 4 Input Nand gate
entity nand4 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
end nand4;
architecture behavior of nand4 is   
begin
        E <= not(A and B and C and D) after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 5 Input Nand gate
entity nand5 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
end nand5;
architecture behavior of nand5 is   
begin
        F <= not(A and B and C and D and E)after Delay;        
end behavior;
 

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 2 Input Nor gate
entity nor2 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
end nor2;
architecture behavior of nor2 is   
begin
        C <= A nor B after Delay;        
end behavior;
 

                 
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 3 Input Nor gate
entity nor3 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: out STD_LOGIC
        );
end nor3;
architecture behavior of nor3 is   
begin
        D <= not(A or B or C) after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 4 Input Nor gate
entity nor4 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: out STD_LOGIC
        );
end nor4;
architecture behavior of nor4 is   
begin
        E <= not(A or B or C or D) after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 5 Input Nor gate
entity nor5 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                E: in STD_LOGIC;
                F: out STD_LOGIC
        );
end nor5;
architecture behavior of nor5 is   
begin
        F <= not(A or B or C or D or E) after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 2 Input Xor gate
entity xor2 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
end xor2;
architecture behavior of xor2 is   
begin
        C <= (A xor B) after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- 2 Input Xnor gate
entity xnor2 is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: out STD_LOGIC
        );
end xnor2;
architecture behavior of xnor2 is   
begin
        C <= not (A xor B) after Delay;        
end behavior;
 

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Inverter
entity inverter is 
        generic (Delay: time);
        port (
                A: in STD_LOGIC;
                B: out STD_LOGIC
        );
end inverter;
architecture behavior of inverter is   
begin
        B <= not A after Delay;        
end behavior;
 


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- D Flip Flop with asynchronous Reset, active Low
-- and asynchronous Set, active Low
entity Dflipflop is 
        generic (Delay: time);
        port (
                CLK: in STD_LOGIC;
             D: in STD_LOGIC;
                 SN: in STD_LOGIC;
                RN: in STD_LOGIC;
             Q: out STD_LOGIC;
                   QN: out STD_LOGIC
        );
end Dflipflop;
architecture behavior of Dflipflop is   
signal Q_int : STD_LOGIC;
begin
        process (CLK, RN, SN)
        begin
      if RN='0' then   --asynchronous RESET active Low
         Q_int <= '0' after Delay;
          elsif SN = '0' then  --asynchronous SET active Low
                          Q_int <= '1' after Delay;
      elsif CLK'event and CLK='1' then  --CLK rising edge
         Q_int <= D after Delay;
      end if;
        end process;
        QN <= not Q_int;
        Q <= Q_int;
end behavior;
 



library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- JK Flip Flop with asynchronous Reset, active Low
-- and asynchronous Set, active Low
entity JKflipflop is 
        generic (Delay: time);
        port (
                CLK: in STD_LOGIC;
                J: in STD_LOGIC;
                K: in STD_LOGIC;
                SN: in STD_LOGIC;
                RN: in STD_LOGIC;
                Q: out STD_LOGIC;
                QN: out STD_LOGIC
        );
end JKflipflop;
architecture behavior of JKflipflop is   
signal Q_int: STD_LOGIC;
begin 
        process (CLK, RN, SN)
        begin
      if RN='0' then   --asynchronous RESET active Low
         Q_int <= '0';
          elsif SN = '0' then        --asynchronous SET active Low
              Q_int <= '1';
      elsif CLK'event and CLK='0' then  --CLK falling edge
 --        Q_int <= (J and not Q_int) or (not K and Q_int) after Delay;
      if J = '1' and K = '1' then Q_int <= not Q_int;
        elsif J = '1' and K = '0' then Q_int <= '1';
        elsif J = '0' and K = '1' then Q_int <= '0';
      end if;
     end if;
        end process;
        QN <= not Q_int after Delay;
        Q <= Q_int after Delay;
end behavior;


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- N-bit Counter with synchronous reset
--                 and Clock Enable
entity Counter is
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                    En : in STD_LOGIC;
                    CLRN: in STD_LOGIC;        -- negative logic 
                     COUNT: out STD_LOGIC_VECTOR(n-1 downto 0);                        -- ***this is the one we can't just plug in as we go.
                                                                                         --this is also true for many many other devices!!!
                 K: out STD_LOGIC
        );
end Counter;
architecture behavior of Counter is
signal COUNT_INT        : STD_LOGIC_VECTOR(n-1 downto 0);
begin
        process (CLK)
        begin
                if CLK='1' and CLK'event then      
                if CLRN='0' then
                        COUNT_INT <= (others => '0') after Delay;
            elsif En='1' then                                           
                                COUNT_INT <= COUNT_INT + 1 after Delay;                                                    
                        end if;                 
                end if;   
        end process;
        K <= '1' when COUNT_INT = 2**n - 1 else '0';
        COUNT <= COUNT_INT;
end behavior;                


library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- N-bit synchronous counter with count enable, 
-- asynchronous reset, and synchronous LOAD 
entity LoadableCounter is 
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                    En, LDN: in STD_LOGIC;
                 CLRN: in STD_LOGIC;        -- negative logic 
                  DIN: in STD_LOGIC_VECTOR(n-1 downto 0);
                     COUNT: out STD_LOGIC_VECTOR(n-1 downto 0);                        
                 K: out STD_LOGIC
        );
end LoadableCounter;
architecture behavior of LoadableCounter is    
signal COUNT_INT        : STD_LOGIC_VECTOR(n-1 downto 0);
begin                 
        process (CLK)
        begin                                  
                if CLK='1' and CLK'event then      
                        if CLRN='0' then
                               COUNT_INT <= (others => '0') after Delay;
                        elsif LDN='0' then         
                                COUNT_INT <= DIN after Delay;      
                        else         
                                if En='1' then                                           
                                        COUNT_INT <= COUNT_INT + 1 after Delay;                                                    
                                end if;                 
                        end if;      
                end if;   
        end process;
        K <= '1' when COUNT_INT = 2**n - 1 else '0';
         COUNT <= COUNT_INT;
end behavior;
 


-- N-bit Register
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity nbitRegister is 
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                    LD: in STD_LOGIC;
                    CLR: in STD_LOGIC;     
                  DIN: in STD_LOGIC_VECTOR(n-1 downto 0);
                     QOUT: out STD_LOGIC_VECTOR(n-1 downto 0)                        
        );
end nbitRegister;
architecture behavior of nbitRegister is    
begin                 
        process (CLK)
        begin                                  
                if CLK='1' and CLK'event then      
                        if CLR='1' then
                                QOUT <= (others => '0') after Delay;
                        elsif LD='1' then         
                                QOUT <= DIN after Delay;      
                        end if;      
                end if;   
        end process;
end behavior;



library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity NBitAdder is
        generic (Delay: time; n: integer);
        port (
                    CIN: in STD_LOGIC;     
                  IN1: in STD_LOGIC_VECTOR(n-1 downto 0);
                 IN2: in STD_LOGIC_VECTOR(n-1 downto 0);
                     OUT1: out STD_LOGIC_VECTOR(n-1 downto 0);                                        
                 COUT: out STD_LOGIC
        );
end NBitAdder;
architecture behavior of NBitAdder is
signal OUTX: STD_LOGIC_VECTOR(n downto 0);
begin        
        OUTX <= '0' & IN1 + IN2 + CIN;
        OUT1 <= OUTX(n-1 downto 0) after Delay;
        COUT <= OUTX(n) after Delay;
end behavior;



-- N Bit Input...2 to 1 multiplexer design with case construct
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity NWideMux is 
        generic (Delay: time; n: integer);
        port (
       SEL: in STD_LOGIC;
       A, B :in STD_LOGIC_VECTOR (n-1 downto 0);
       MUX_OUT: out STD_LOGIC_VECTOR (n-1 downto 0)
        );
end NWideMux;
architecture behavior of NWideMux is   
begin                 
        process (SEL, A, B)
        begin
                case SEL is
                        when '0' => MUX_OUT <= A after Delay;
                              when '1' => MUX_OUT <= B after Delay;
                        when others => NULL;
                end case;
        end process;
end behavior;


-- N-bit serial-in and serial-out shift register (left shift)
-- with CLR, LOAD, AND ENABLE (and shift-in bit...no shift out bit)
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity ShiftRegLS is 
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
             SHIFTIN: in STD_LOGIC;
                 LoadIn: in STD_LOGIC_VECTOR(n-1 downto 0);
                 LD : in STD_LOGIC;         
                 LS_En: in STD_LOGIC;
                 CLR : in STD_LOGIC;
              DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
end ShiftRegLS;
architecture behavior of ShiftRegLS is   
signal REG: STD_LOGIC_VECTOR(n-1 downto 0);
begin                 
        process (CLK)
        begin                        
                   if CLK'event and CLK='1' then  
                        if (CLR='1') then
                               REG <= (others => '0') after Delay;
                        elsif (LD = '1') then
                                     REG <= LoadIn(n-1 downto 0) after Delay;
                        elsif (LS_En = '1') then
                              REG <= REG((n-2) downto 0) & SHIFTIN after Delay;
                        end if;
                   end if;
        end process;        
        DOUT <= REG;
end behavior;



-- N-bit serial-in and serial-out shift register (right shift)
-- with CLR, LOAD, AND ENABLE (and shift-in bit...no shift out bit)
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity ShiftRegRS is 
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
             SHIFTIN: in STD_LOGIC;
                 LoadIn: in STD_LOGIC_VECTOR(n-1 downto 0);
                 LD : in STD_LOGIC;         
                 RS_En: in STD_LOGIC;
                  CLR : in STD_LOGIC;
             DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
end ShiftRegRS;
architecture behavior of ShiftRegRS is   
signal REG: STD_LOGIC_VECTOR(n-1 downto 0);
begin                 
        process (CLK)
        begin                        
                   if CLK'event and CLK='1' then  
                        if (CLR='1') then
                                REG <= (others => '0') after Delay;
                        elsif (LD = '1') then
                                     REG <= LoadIn(n-1 downto 0) after Delay;
                        elsif (RS_En = '1') then
                              REG <=  SHIFTIN & REG(n-1 downto 1) after Delay;
                        end if;
                   end if;
        end process;        
        DOUT <= REG;
end behavior;



-- N-bit serial-in and serial-out shift register (bi-directional shift)
-- with CLR, LOAD, AND LS ENABLE and RS ENABLE (shift-in bit but no shift out bit)
-- if both enables are high, left shift overrides right shift
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity ShiftRegBidir is 
        generic (Delay: time; n: integer);
        port (
             CLK: in STD_LOGIC;
                 LS_En: in STD_LOGIC;
                 RS_En: in STD_LOGIC;
             SHIFTIN_from_right_to_left: in STD_LOGIC;
                 LoadIn: in STD_LOGIC_VECTOR(n-1 downto 0);
                 LD : in STD_LOGIC;         
                 CLR : in STD_LOGIC;
             SHIFTIN_from_left_to_right: in STD_LOGIC;
              DOUT: out STD_LOGIC_VECTOR(n-1 downto 0)
        );
end ShiftRegBidir;
architecture behavior of ShiftRegBidir is   
signal REG: STD_LOGIC_VECTOR(n-1 downto 0);
begin                 
        process (CLK)
        begin                        
                   if CLK'event and CLK='1' then  
                        if (CLR='1') then
                                REG <= (others => '0') after Delay;
                        elsif (LD = '1') then
                             REG <= LoadIn(n-1 downto 0) after Delay;
                        elsif (LS_En = '1') then
                              REG <= REG((n-2) downto 0) & SHIFTIN_from_right_to_left after Delay;
                        elsif (RS_En = '1') then
                              REG <=  SHIFTIN_from_left_to_right & REG(n-1 downto 1) after Delay;
                        end if;
                   end if;
        end process;        
        DOUT <= REG;
end behavior;



-- N_bit Tristate Buffer
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity NBitTristate is 
        generic (Delay: time; n: integer);
        port (
       ENABLE: in STD_LOGIC;
       DIN: in STD_LOGIC_VECTOR (n-1 downto 0);
       DOUT: out STD_LOGIC_VECTOR (n-1 downto 0)
        );
end NBitTristate;
architecture behavior of NBitTristate is   
begin                                                                                 
        process (ENABLE, DIN)
        begin                        
                if (ENABLE = '1') then
                        DOUT <= DIN after Delay;
                else 
                        DOUT <= (others => 'Z') after Delay;
                end if;
        end process;
end behavior;


-- Complementer
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity Complementer is 
        generic (Delay: time; n: integer);
        port (
       ENABLE: in STD_LOGIC;
       DIN: in STD_LOGIC_VECTOR (n-1 downto 0);
       DOUT: out STD_LOGIC_VECTOR (n-1 downto 0)
        );
end Complementer;
architecture behavior of Complementer is   
begin                                                                                 
        process (ENABLE, DIN)
        begin                        
                if (ENABLE = '1') then
                        DOUT <= not DIN after Delay;
                else 
                        DOUT <= DIN after Delay;
                end if;
        end process;
end behavior;


-- Full Adder
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity FullAdder is 
        generic (Delay: time);
        port (
                X: in STD_LOGIC;
                Y: in STD_LOGIC;
                Cin: in STD_LOGIC;
                Cout: out STD_LOGIC;
                Sum: out STD_LOGIC
        );
end FullAdder;
architecture behavior of FullAdder is   
begin
        Sum <= X xor Y xor Cin after Delay; 
        Cout <= (X and Y) or (X and Cin) or (Y and Cin) after Delay;
end behavior;


-- 2 to 4 Decoder
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity Decoder_2_to_4 is 
        generic (Delay: time);
        port (
       D_IN: in STD_LOGIC_VECTOR(1 downto 0); 
       D_OUT: out STD_LOGIC_VECTOR(3 downto 0)
        );
end Decoder_2_to_4;
architecture behavior of Decoder_2_to_4 is   
begin                 
        process(D_IN)
        begin 
                case D_IN is      
                        when "00" => D_OUT <= "0001" after Delay;      
                        when "01" => D_OUT <= "0010" after Delay;      
                        when "10" => D_OUT <= "0100" after Delay;      
                        when "11" => D_OUT <= "1000" after Delay;
                        when others => NULL;
                end case;
        end process;
end behavior;


-- 3 to 8 Decoder, Synchronous with Reset
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity Decoder_3_to_8 is 
        generic (Delay: time);
        port (
       D_IN: in STD_LOGIC_VECTOR(2 downto 0); 
       D_OUT: out STD_LOGIC_VECTOR(7 downto 0)
        );
end Decoder_3_to_8;
architecture behavior of Decoder_3_to_8 is   
begin                 
        process(D_IN)
        begin 
                case D_IN is      
                        when "000" => D_OUT <= "00000001" after Delay;      
                        when "001" => D_OUT <= "00000010" after Delay;      
                        when "010" => D_OUT <= "00000100" after Delay;      
                        when "011" => D_OUT <= "00001000" after Delay;
                        when "100" => D_OUT <= "00010000" after Delay;
                        when "101" => D_OUT <= "00100000" after Delay;
                        when "110" => D_OUT <= "01000000" after Delay;
                        when "111" => D_OUT <= "10000000" after Delay;
                        when others => NULL;
                end case;
        end process;
end behavior;



-- 2 to 1 multiplexer design with case construct
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity MUX_2_to_1 is 
        generic (Delay: time);
        port (
       MUX_IN :in STD_LOGIC_VECTOR(1 downto 0);
       SEL: in STD_LOGIC;
       MUX_OUT: out STD_LOGIC
        );
end MUX_2_to_1;
architecture behavior of MUX_2_to_1 is   
begin                 
        process (SEL, MUX_IN)
        begin
                case SEL is
                        when '0' => MUX_OUT <= MUX_IN(0) after Delay;
              when '1' => MUX_OUT <= MUX_IN(1) after Delay;
                        when others => NULL;
                end case;
        end process;
end behavior;



-- 4 to 1 multiplexer design with case construct
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity MUX_4_to_1 is 
        generic (Delay: time);
        port (
       MUX_IN :in STD_LOGIC_VECTOR(3 downto 0);
       SEL: in STD_LOGIC_VECTOR(1 downto 0);
       MUX_OUT: out STD_LOGIC
        );
end MUX_4_to_1;
architecture behavior of MUX_4_to_1 is   
begin                 
        process (SEL, MUX_IN)
        begin
                case SEL is
                        when "00" => MUX_OUT <= MUX_IN(0) after Delay;
                     when "01" => MUX_OUT <= MUX_IN(1) after Delay;
                        when "10" => MUX_OUT <= MUX_IN(2) after Delay;
                        when "11" => MUX_OUT <= MUX_IN(3) after Delay;
                        when others => NULL;
                end case;
        end process;
end behavior;



-- 8 to 1 multiplexer design with case construct
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity MUX_8_to_1 is 
        generic (Delay: time);
        port (
       MUX_IN :in STD_LOGIC_VECTOR(7 downto 0);
       SEL: in STD_LOGIC_VECTOR(2 downto 0);
       MUX_OUT: out STD_LOGIC
        );
end MUX_8_to_1;
architecture behavior of MUX_8_to_1 is   
begin                 
        process (SEL, MUX_IN)
        begin
                case SEL is
                        when "000" => MUX_OUT <= MUX_IN(0) after Delay;
                     when "001" => MUX_OUT <= MUX_IN(1) after Delay;
                        when "010" => MUX_OUT <= MUX_IN(2) after Delay;
                        when "011" => MUX_OUT <= MUX_IN(3) after Delay;
                        when "100" => MUX_OUT <= MUX_IN(4) after Delay;
                     when "101" => MUX_OUT <= MUX_IN(5) after Delay;
                        when "110" => MUX_OUT <= MUX_IN(6) after Delay;
                        when "111" => MUX_OUT <= MUX_IN(7) after Delay;
                        when others => NULL;
                end case;
        end process;
end behavior;



-- Tristate Buffer
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity Tristatebuf is 
        generic (Delay: time);
        port (
       ENABLE: in STD_LOGIC;
       DIN: in STD_LOGIC;
       DOUT: out STD_LOGIC
        );
end Tristatebuf;
architecture behavior of Tristatebuf is   
begin                                                                                 
        DOUT <= DIN when ENABLE='1' else 'Z';
end behavior;


