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

#staload "./../xats/basics.sats"
#staload "./../xats/lexing.sats"

(* ****** ****** *)

local

assume
token_type =
$rec{
  token_loc= loc_t
, token_node= token_node
} (* end of [$rec] *)

in (* in-of-local *)
//
implement
{}(*tmp*)
token_get_loc(tok) = tok.token_loc
implement
{}(*tmp*)
token_get_node(tok) = tok.token_node
//
end // end of [local]

(* ****** ****** *)
//
implement
print_token
  (tok) =
  fprint_token(stdout_ref, tok)
implement
prerr_token
  (tok) =
  fprint_token(stderr_ref, tok)
//
implement
fprint_token
  (out, tok) = fprint_tnode(out, !tok)
//
(* ****** ****** *)

#define COMPILE 1

(* ****** ****** *)

implement
fprint_val<fk>(out, fk) = fprint(out, "[funkind]")
implement
fprint_val<vk>(out, vk) = fprint(out, "[valkind]")

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

(* end of [lexing.dats] *)
