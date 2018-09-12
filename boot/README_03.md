# LABELS AND 0x7C00

## LABELS
 - In assembly language **LABELS** provide you a way to write your own **subroutines** or **functions** (as in C)
 - We have used **the_label** label in our assembly code which basically defines a character **X**
 - So when a call is made by using label's name **the_label**, the contents of label (which in this case is X) gets moved
   in **al** when instruction **mov al, [the_label]** is used
 - **the_label** refers ot the address of label in memory while **[the_label]** refers to value stored
   at memory location referred by **the_label**

## Why ORG 0x7C00 and not ORG 0x00
 - By default **ORG** if not specified, is set to value **0x00**
 - The reason we have set **ORG** to **0x7C00** is due to the fact that by default **BIOS** places our boot sector code
   in free region of memory (from 0x500 to 0x9FC00) at location **0x7C00** location , So if **ORG** is **0x7C00**
   then boot sector code gets started from location **0x7C00**

## INT 0x10, AH=0x0E, AL=(value to be displayed) (Teletype Ouput)
 - CPU interrupts can be used to perform a variety of tasks
 - By using **int 0x10** with **ah=0x0E** any value stored in **al** gets displayed on the screen
