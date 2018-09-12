# BIOS ROUTINES AND CPU INTERRUPTS

## x86 INTERRUPTS
- With the help of BIOS routines and interrupts we can perform a number of tasks in our boot sector program
- With the help of x86 interrupt **int 0x10** and cpu general purpose register **ax** we can display
  characters
- With reference to [](http://www.ablmcc.edu.hk/~scy/CIT/8086_bios_and_dos_interrupts.htm#int10h_0Eh)
  characters can be displayed on the screen using teletype (tty) output method

## boot_sector_02.asm
- **ax** is a 16 bit cpu general purpose register having two part al(lower byte) and ah (higher byte)
- To display character e.g "a", use instruction **mov al, 'a'** to move character to **al** register
- **mov ah, 0x0e** instruction moves 0x0e to ah which notifies cpu about teletye output
- Finally instruction **int 0x10** interrupts the cpu to display contents of register **al** on screen
- So According to example given below a character displayed on the screen, advancing the cursor and
  scrolling the screen as necessary. the printing is always done to current active page

example:
		mov al, 'b'
		mov ah, 0x0e
		int 0x10

NOTE: on specific systems this function may not be supported in graphics mode
