(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("lexing_error.dats")
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
lexerr_type =
$rec{
  lexerr_loc= loc_t
, lexerr_node= lexerr_node
} (* end of [$rec] *)

in (* in-of-local *)
//
implement
{}(*tmp*)
lexerr_get_loc(err) = err.lexerr_loc
implement
{}(*tmp*)
lexerr_get_node(err) = err.lexerr_node
//
end // end of [local]

(* ****** ****** *)
//
implement
print_lexerr
  (err) =
  fprint_lexerr(stdout_ref, err)
implement
prerr_lexerr
  (err) =
  fprint_lexerr(stderr_ref, err)
//
implement
fprint_lexerr
  (out, err) = fprint_lxenode(out, !err)
//
(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/lexing_fprint_lxenode_impl.hats"
//
implement
print_lxenode(x0) = fprint_lxenode(stdout_ref, x0)
implement
prerr_lxenode(x0) = fprint_lxenode(stderr_ref, x0)
implement
fprint_lxenode(out, x0) = fprint_lxenode_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [lexing_error.dats] *)
