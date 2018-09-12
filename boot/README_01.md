# BOOT SECTOR

## MBR
 - Sector zero in the disk is called **Master Boot Record**
 - MBR contains code that boots **OS** or another **Bootloader**
 - MBR is of 512 bytes in size. 446 bytes contains bootable code, 64
   bytes contain disk partition information (16 bytes per partition) and
   remaining 2 bytes are **signature bytes**.
 - With the help of signature bytes bios chip identifies that which
   medium (e.g hard drive) is bootable or not.

### boot_sector_01.asm
 - In this assembly program we have not yet defined bootable code or disk
   partition information.
 - **jmp $** instruction is used to iterate infinitely to the same location
   ($ show current line). This is done in order to make cpu busy and not
   try to read any further instructions.
 - **times 510-($-$$) db 0** instruction is used to fill 510 - (2-0) bytes
   with zero, as **jmp $** is a two bytes instruction and in our case by default
   ORG is set to zero so **$=2** and **$$=0**. the db instruction defines a single
   byte with value zero.
 - Now IP points to byte 511, dw instruction (with respect to endianess) defines
   a word (2 bytes) and initializes byte 511 with 0x55 and 512 with 0xAA.

## CODE ASSEMBLING
 - Use NASM to assemble the code and generate **bin** file
  **$ nasm -f bin boot_sector_01.asm -o boot_sector_01.bin**
 - Use qemu to run the **bin** file from drive
  **$ qemu-system-x86_64 -drive format=raw,file=boot_sector_01.bin**
 - To view your **bin** file use
  **$ xxd boot_sector_01.bin**
