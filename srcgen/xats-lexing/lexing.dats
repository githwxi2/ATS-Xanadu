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

local
//
#define COMPILE 1
//
#include "./lexing_print.dats"
//
in (*nothing*) end

(* ****** ****** *)

(* end of [lexing.dats] *)
