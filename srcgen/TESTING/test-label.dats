(*
**
** HX-2016-08-29:
** For testing label
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
"./../xats/label.sats"
//
(* ****** ****** *)

#dynload "./../dynloadall.dats"

(* ****** ****** *)

implement
main0(argc, argv) =
{
//
val l0 = label_make(0)
val l1 = label_make("l1")
//
val () = assertloc (l0 < l1)
//
val () = println! ("l0 = ", l0)
val () = println! ("l1 = ", l1)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-label.dats] *)
