(*
**
** HX-2016-08-30:
** For testing lexing
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
"./../xats/lexing.sats"
#staload
"./../xats-lexing/lexing.dats"
//
(* ****** ****** *)

#dynload "./../dynloadall.dats"

(* ****** ****** *)

implement
main0(argc, argv) =
{
//
val
out = stdout_ref
//
val () = fprintln! (out, "T_0_ = ", T_0_())
val () = fprintln! (out, "T_AT = ", T_AT())
val () = fprintln! (out, "T_BAR = ", T_BAR())
val () = fprintln! (out, "T_BANG = ", T_BANG())
val () = fprintln! (out, "T_BACKSLASH = ", T_BACKSLASH())
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test-lexing.dats] *)
