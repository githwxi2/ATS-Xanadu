(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("symbol.dats")
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)

staload "./../xats/symbol.sats"

(* ****** ****** *)
//
implement
print_symbol
  (sym) =
  fprint_symbol(stdout_ref, sym)
implement
prerr_symbol
  (sym) =
  fprint_symbol(stderr_ref, sym)
//
(* ****** ****** *)

(* end of [symbol.dats] *)
