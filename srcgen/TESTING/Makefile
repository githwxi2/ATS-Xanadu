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
#
PATSCC2=\
$(PATSCC) -I./.. -DATS_MEMALLOC_LIBC
#
######

all::

######

LIBXATSOPT_O=./../lib/libxatsopt.o

######
#
all:: \
test-label
test-label: \
test-label.dats; \
  $(PATSCC2) -o test-label $< $(LIBXATSOPT_O)
#
regress:: test-label; ./$<
cleanall:: ; $(RMF) test-label
#
######
#
all:: \
test-symbol
test-symbol: \
test-symbol.dats; \
  $(PATSCC2) -o test-symbol $< $(LIBXATSOPT_O)
#
regress:: test-symbol; ./$<
cleanall:: ; $(RMF) test-symbol
#
######
#
all:: \
test-counter
test-counter: \
test-counter.dats; \
  $(PATSCC2) -o test-counter $< $(LIBXATSOPT_O)
#
regress:: test-counter; ./$<
cleanall:: ; $(RMF) test-counter
#
######
#
all:: \
test-location
test-location: \
test-location.dats; \
  $(PATSCC2) -o test-location $< $(LIBXATSOPT_O)
#
regress:: test-location; ./$<
cleanall:: ; $(RMF) test-location
#
######
#
all:: \
test-lexing
test-lexing: \
test-lexing.dats; \
  $(PATSCC2) -o test-lexing $< $(LIBXATSOPT_O)
#
regress:: test-lexing; ./$<
cleanall:: ; $(RMF) test-lexing
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
