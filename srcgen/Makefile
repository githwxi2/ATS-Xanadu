######
#
# Makefile for xatsopt
#
######
#
# Author: Hongwei Xi
# Start time: August, 2016
# Authoremail: gmhwxi@gmail.com
#
######

PATSCC=$(PATSHOME)/bin/patscc
PATSOPT=$(PATSHOME)/bin/patsopt

######

ARR=ar -r
LDR=ld -r
RMF=rm -f

######

OUTPUT=OUTPUT

######
#
OBJECT :=
#
OBJECT += $(OUTPUT)/dynloadall_dats.o
#
OBJECT += $(OUTPUT)/xats-symbol_dats.o
OBJECT += $(OUTPUT)/xats-location_dats.o
#
######
#
all:: \
$(OUTPUT)/dynloadall_dats.o
#
$(OUTPUT)/dynloadall_dats.o: \
$(OUTPUT)/dynloadall_dats.c; $(PATSCC) -O2 -c -o $@ $<
$(OUTPUT)/dynloadall_dats.c: dynloadall.dats; $(PATSOPT) -o $@ -d $<
#
######
#
all:: \
$(OUTPUT)/xats-symbol_dats.o
#
$(OUTPUT)/xats-symbol_dats.o: \
$(OUTPUT)/xats-symbol_dats.c; $(PATSCC) -O2 -c -o $@ $<
$(OUTPUT)/xats-symbol_dats.c: xats-symbol/symbol.dats; $(PATSOPT) -o $@ -d $<
#
######
#
all:: \
$(OUTPUT)/xats-location_dats.o
#
$(OUTPUT)/xats-location_dats.o: \
$(OUTPUT)/xats-location_dats.c; $(PATSCC) -O2 -c -o $@ $<
$(OUTPUT)/xats-location_dats.c: xats-location/location.dats; $(PATSOPT) -o $@ -d $<
#
######

-include .depend

######

depend:: ; $(RMF) .depend
depend:: ; $(PATSOPT) --output-a .depend --depgen -d xats-symbol/symbol.dats
depend:: ; $(PATSOPT) --output-a .depend --depgen -d xats-location/location.dats

######

libatsopt:: $(OBJECT); $(LDR) -o lib/libatsopt.o $(OBJECT)

######

clean:: ; $(RMF) xats/*~
clean:: ; $(RMF) xats-*/*~

######

cleanall:: clean
cleanall:: ; $(RMF) lib/libatsopt.o
cleanall:: ; $(RMF) $(OUTPUT)/*_?ats.o
cleanall:: ; $(RMF) $(OUTPUT)/*_?ats.c

###### end of [Makefile] ######
