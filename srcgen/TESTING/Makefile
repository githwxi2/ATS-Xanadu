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

all::

######

LIBATSOPT_O=./../lib/libatsopt.o

######
#
all:: \
test-symbol
test-symbol: \
test-symbol.dats; \
$(PATSCC) -verbose \
-DATS_MEMALLOC_LIBC -I./.. -o test-symbol $< $(LIBATSOPT_O)
#
regress:: test-symbol; ./$<
cleanall:: ; $(RMF) test-symbol
#
######
#
all:: \
test-location
test-location: \
test-location.dats; \
$(PATSCC) -verbose \
-DATS_MEMALLOC_LIBC -I./.. -o test-location $< $(LIBATSOPT_O)
#
regress:: test-location; ./$<
cleanall:: ; $(RMF) test-location
#
######

testall:: all
testall:: regress
testall:: cleanall

######

RMF=rm -f

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.o
clean:: ; $(RMF) *_?ats.c

######

cleanall:: clean

###### end of [Makefile] ######
