(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("lexing_print.dats")
*)

(* ****** ****** *)

#staload "./../xats/lexing.sats"

(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/lexing_fprint_tnode_impl.hats"
//
implement
fprint_tnode(out, x0) = fprint_tnode_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
// HX: for codegen
//
(* ****** ****** *)
//
#if
defined(FPRINT_TNODE)
#then
//
#codegen2(fprint, tnode, fprint_tnode_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [staexp2_print.dats] *)
