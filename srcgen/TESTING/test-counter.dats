(*
**
** HX-2016-08-29:
** For testing counter
**
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
#staload
"./../xats/counter.sats"
//
(* ****** ****** *)

#dynload "./../dynloadall.dats"

(* ****** ****** *)

implement
main0(argc, argv) =
{
//
val c0 = counter_make()
//
val () = println! !c0
val () = println! (c0.get())
val () = println! (c0.getinc())
val () = println! (c0.incget())
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-counter.dats] *)
