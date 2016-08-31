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

(*
implement
fprint_val<tnode> = fprint_tnode
implement
fprint_val<token> = fprint_token
*)

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
print_tnode(x0) = fprint_tnode(stdout_ref, x0)
implement
prerr_tnode(x0) = fprint_tnode(stderr_ref, x0)
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
#codegen2(fprint, token_node, fprint_tnode_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [staexp2_print.dats] *)
