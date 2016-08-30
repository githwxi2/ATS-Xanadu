(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("lexing.dats")
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
#staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)

#staload "./../xats/lexing.sats"

(* ****** ****** *)
//
implement
{}(*tmp*)
token_get_loc(tok) = tok.token_loc
implement
{}(*tmp*)
token_get_node(tok) = tok.token_node
//
(* ****** ****** *)
//
implement
{}(*tmp*)
print_token
  (tok) = fprint_token(stdout_ref, tok)
implement
{}(*tmp*)
prerr_token
  (tok) = fprint_token(stderr_ref, tok)
//
implement
{}(*tmp*)
fprint_token
  (out, tok) = fprint_token_node(out, !tok)
//
(* ****** ****** *)

(* end of [lexing.dats] *)
