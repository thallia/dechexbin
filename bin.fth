( on user input, this program will take decimal OR binary inputs and convert them to the opposite value. )
( dara "thallia" klinkner 2017 )

( foundation definitions )

: binary   2 base ! ;

( input )
( for D_E_C )
: shinybinary   ( converts binary to dec )
    binary   cr  ( changes number system )
    ." Please input your binary number, let's burn this candle!"
    cr ." Enter your number like so: binarynumber convert" quit ;

: hexyshmexy   ( this converts hex to dec )
     hex cr
    ." Please input your hex number, and we'll get this show on the road!"
    cr ." Enter your number like so: hexnumber convert" quit ;

( H_E_X )
: incredecimal   ( converts decimal to hex )
    decimal cr
    ." Please input your number to start this party with a bang!"
    cr
    ." Input your number like so: decimalnumber transform" quit ;

: finebine   ( converts binary to hex )
    binary cr
    ." Please input your binary number. We're chomping at the bit!"
    cr
    ." Input your number like so: binarynumber transform" quit ;

( for B_I_N )
: shmexyhex   ( converts hex to binary )
    hex cr 
    ." Please input your hex number, we're impatient to see the results!"
    cr
    ." Input like so: hexnumber transfigure" quit ;

: impeccdec   ( converts decimal to binary )
    decimal
    cr ." Please input your decimal number, it's gonna be a cutie."
    cr
    ." Input with pizazz: decimalnumber transfigure" quit ;


( first option )
: D_E_C   CR ." I knew I was your favorite! Now tell me, do you want to convert some HEXy shmexy to delectable decimal, or some shiny binary to delectable decimal?"
    CR CR ." If you want HEXy schmexy, input 'h'. If you want shiny binary, input 'b'." cr
    key
    dup 104 = if hexyshmexy else shinybinary then ;

( second option )
: H_E_X  cr ." Ah, so you choose our mysterious and brooding visitor, HEX. I always knew you were in this for the unexpected! Would you like to convert some incredible decimal to hex, or some finery binary?"
    cr ." If you would like to convert decimal, input 'd'. If you would like to convert binary, input 'b'." cr
    key
    dup 100 = if incredecimal else finebine then ;

( third option )
: B_I_N   ( converts anything to binary )
    cr ." I like your instincts! Lets get to know this two-facer a little more closely. If you would like to convert shmexy hex to binary, input 'h'. If you would like to convert impeccable decimal to binary, input 'd'." cr
    key
    dup 104 = if shmexyhex else impeccdec then ;

: takeinput   dup 68 = if D_E_C else
        dup 72 = if H_E_X else B_I_N then then ;

( conversion defs )
: convert   decimal cr cr ." Meet your new converted number! They're quite the catch =  " . cr cr
    ." If you would like to go back to the main menu, enter 'back'." quit ;

: transform   HEX cr cr ." Here is your transformed number!  " . cr cr
    ." If you would like to go back to the main menu, input 'back'." quit ;

: transfigure   binary cr cr ." Check out that hot number! I think I need a glass of water.  " . cr cr
    ." If you would like to go back to the main menu, input 'back'." quit ;

: back   ( to exit to the main menu ) cr cr
    ." Welcome back! Who would you like to interview next?" cr cr
    ." Input 'H' for our friend HEX, 'D' for DECIMAL, and 'B' for BINARY." cr cr
    key
    takeinput ;

cr cr
." To leave the show at anytime, please wave 'bye'. 
CR CR
." Aaaaaand welcome to NCL, Number Conversion Land! I'm your host, DEC, and I'm here with HEX and BIN to help you sort through your daily number converting issues."
CR CR
." To get started, let us know who we should interview first. If you prefer converting to the double-digit madman, HEX, input 'H'!"
CR CR
." If you love a two-faced mystery, input 'B' to choose to convert to the lovely BIN!"
CR CR
." Finally, if you enjoy hearing about tens of thousands of hundred-thousands of jokes, input 'D' for our familiar host, me, DEC!"
cr 
." (case-sensitive input) "
CR CR

key ( wait for input )
takeinput