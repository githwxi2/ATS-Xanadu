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
#staload
"./../xats/location.sats"
#staload
"./../xats-location/location.dats"
//
(* ****** ****** *)

#dynload "./../dynloadall.dats"

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
val () = assertloc(is_dummy(pos0))
val () = assertloc(~is_dummy(pos1))
//
val () = println! ("pos0 = ", pos0)
val () = println! ("pos1 = ", pos1)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-location.dats] *)
