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
all:: \
$(OUTPUT)/xats-location_dats.o
#
libatsopt:: \
$(OUTPUT)/xats-location_dats.o; $(LDR) -o lib/libatsopt.o $<
$(OUTPUT)/xats-location_dats.o: \
$(OUTPUT)/xats-location_dats.c; $(PATSCC) -c -o $@ $<
$(OUTPUT)/xats-location_dats.c: xats-location/location.dats; $(PATSOPT) -o $@ -d $<
#
######

clean:: ; $(RMF) xats/*~
clean:: ; $(RMF) xats-*/*~

######

cleanall:: clean
cleanall:: ; $(RMF) lib/libatsopt.o
cleanall:: ; $(RMF) $(OUTPUT)/*_?ats.o
cleanall:: ; $(RMF) $(OUTPUT)/*_?ats.c

###### end of [Makefile] ######
