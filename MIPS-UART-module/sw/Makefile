CFLAGS =	 -Wall -c -s -O3
MIPSPATH= ~/bin/mips-toolchain/bin/

GCC_MIPS       = $(MIPSPATH)/mips-sde-elf-gcc $(CFLAGS)
AS_MIPS        = $(MIPSPATH)/mips-sde-elf-as
LD_MIPS        = $(MIPSPATH)/mips-sde-elf-ld
DUMP_MIPS      = $(MIPSPATH)/mips-sde-elf-objdump
COPY_MIPS      = $(MIPSPATH)/mips-sde-elf-objcopy
CONVERT        = python convert.py 512 1024

LIBS =
SRC=test

all:	
	$(AS_MIPS) -o $(SRC).o $(SRC).asm
	$(LD_MIPS) -Ttext 0x0 -Tdata 0x200 -eentry -o $(SRC).axf $(SRC).o
	$(DUMP_MIPS) --disassemble $(SRC).axf > $(SRC).lst
	$(COPY_MIPS) -O verilog -R .text $(SRC).axf data.vh
	$(COPY_MIPS) -O verilog -R .data $(SRC).axf text.vh
	$(CONVERT)
	cp *.rom ../xilinx/uartmips

clean:
	rm -f *.o
