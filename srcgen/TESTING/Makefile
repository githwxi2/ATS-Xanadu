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

RMF=rm -f

######

all::

######
#
all:: \
test-location
test-location: \
test-location.dats ; \
$(PATSCC) -I./.. -o test-location $<
#
regress:: test-location; ./$<
cleanall:: ; $(RMF) test-location
#
######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.o
clean:: ; $(RMF) *_?ats.c

######

cleanall:: clean

###### end of [Makefile] ######
