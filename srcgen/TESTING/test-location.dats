(*
**
** HX-2016-08-29:
** For testing location
**
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
staload "./../xats/location.sats"
staload "./../xats-location/location.dats"
//
(* ****** ****** *)

implement
main0(argc, argv) =
{
//
var pos0 : pos_t
var pos1 : pos_t
//
val () = position_initize(pos0)
val () = position_initize(pos1, 0, 0, 0L)
//
val () = println! ("pos0.nrow = ", pos0.nrow())
val () = println! ("pos0.ncol = ", pos0.ncol())
val () = println! ("pos0.nchar = ", pos0.nchar())
//
val () = println! ("pos1.nrow = ", pos1.nrow())
val () = println! ("pos1.ncol = ", pos1.ncol())
val () = println! ("pos1.nchar = ", pos1.nchar())
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-location.dats] *)
