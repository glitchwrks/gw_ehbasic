SHELL		:= /bin/bash

AFLAGS		= -t none
LFLAGS		= -t none

CA		= ca65
CL		= cl65

all: ehbasic

ehbasic: ehbasic.hex loader.hex

ehbasic.hex: ehbasic.bin
	srec_cat ehbasic.bin -binary -offset 0xC000 -o ehbasic.hex -intel -address-length=2

ehbasic.bin: ehbasic.o
	$(CL) $(LFLAGS) -o ehbasic.bin ehbasic.o

ehbasic.o: ehbasic.a65 gw6502sbc1.a65
	$(CA) $(AFLAGS) -l ehbasic.lst --feature labels_without_colons -o ehbasic.o gw6502sbc1.a65

loader.hex: loader.bin
	srec_cat loader.bin -binary -crop 0xED00 -o loader.hex -intel -address-length=2

loader.bin: loader.o
	$(CL) $(LFLAGS) -C gw6502sbc1.cfg -o loader.bin loader.o

loader.o: loader.a65
	$(CA) $(AFLAGS) -l loader.lst -o loader.o loader.a65

clean:
	rm -f *.o *.bin *.hex *.lst

distclean: clean
