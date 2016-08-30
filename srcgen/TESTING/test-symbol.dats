(*
**
** HX-2016-08-29:
** For testing symbol
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
"./../xats/symbol.sats"
#staload
"./../xats-symbol/symbol.dats"
//
(* ****** ****** *)

#dynload "./../dynloadall.dats"

(* ****** ****** *)

implement
main0(argc, argv) =
{
//
val x0 = symbol_make("")
val x1 = symbol_make("")
//
val () = assertloc (x0 = x1)
//
val x2 = symbol_make("xatsopt")
//
val () = println! ("x2.name = ", x2.name())
val () = println! ("x2.stamp = ", x2.stamp())
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-symbol.dats] *)
