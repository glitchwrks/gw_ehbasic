SHELL		:= /bin/bash

AFLAGS		= -t none
LFLAGS		= -t none

CA		= ca65
CL		= cl65

all: ehbasic.hex

ehbasic.hex: ehbasic.bin
	srec_cat ehbasic.bin -binary -offset 0xC000 -o ehbasic.hex -intel -address-length=2

ehbasic.bin: ehbasic.o
	$(CL) $(LFLAGS) -o ehbasic.bin ehbasic.o

ehbasic.o: ehbasic.a65 gw6502sbc1.a65
	$(CA) $(AFLAGS) -l ehbasic.lst --feature labels_without_colons -o ehbasic.o gw6502sbc1.a65

clean:
	rm -f *.o *.bin *.hex *.lst

distclean: clean
