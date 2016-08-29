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
RMF=rm -f

######

OUTPUT=OUTPUT

######

all:: \
$(OUTPUT)/xats-location_dats.o

######
#
$(OUTPUT)/xats-location_dats.o: \
$(OUTPUT)/xats-location_dats.c; $(PATSCC) -c -o $@ $<
$(OUTPUT)/xats-location_dats.c: xats-location/location.dats; $(PATSOPT) -o $@ -d $<
#
######

libatsopt:: \
$(OUTPUT)/xats-location_dats.o; $(ARR) libatsopt.a $<

######

clean:: ; $(RMF) xats/*~
clean:: ; $(RMF) xats-*/*~

######

cleanall:: clean
cleanall:: ; $(RMF) libatsopt.a
cleanall:: ; $(RMF) $(OUTPUT)/*_?ats.o
cleanall:: ; $(RMF) $(OUTPUT)/*_?ats.c

###### end of [Makefile] ######