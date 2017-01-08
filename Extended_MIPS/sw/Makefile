CFLAGS =	-O0 -Wall -c -s 
MIPSPATH= ~/bin/mips-toolchain/bin/

GCC_MIPS       = $(MIPSPATH)/mips-sde-elf-gcc $(CFLAGS)
AS_MIPS        = $(MIPSPATH)/mips-sde-elf-as
LD_MIPS        = $(MIPSPATH)/mips-sde-elf-ld
DUMP_MIPS      = $(MIPSPATH)/mips-sde-elf-objdump
COPY_MIPS      = $(MIPSPATH)/mips-sde-elf-objcopy
CONVERT        = python convert.py 512 1024

LIBS =

all:	
	$(AS_MIPS) -o test.o test.asm
	$(LD_MIPS) -Ttext 0x0 -Tdata 0x200 -eentry -o test.axf test.o
	$(DUMP_MIPS) --disassemble test.axf > test.lst
	$(COPY_MIPS) -O verilog -R .text test.axf data.vh
	$(COPY_MIPS) -O verilog -R .data test.axf text.vh
	$(CONVERT)

clean:
	rm -f *.o
