(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("lexing_codegen.dats")
*)

(* ****** ****** *)

#staload "./../xats/lexing.sats"

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
#codegen2(fprint, token_node, fprint_tnode_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(FPRINT_LXENODE)
#then
//
#codegen2(fprint, lexerr_node, fprint_lxenode_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [lexing_codegen.dats] *)
