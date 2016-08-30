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
staload
"./../xats/symbol.sats"
staload
"./../xats-symbol/symbol.dats"
//
(* ****** ****** *)

dynload "./../dynloadall.dats"

(* ****** ****** *)

implement
main0(argc, argv) =
{
//
val x0 = symbol_make("")
val x1 = symbol_make("")
//
val () = println! ("x0.stamp = ", x0.stamp())
val () = println! ("x1.stamp = ", x1.stamp())
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-symbol.dats] *)
