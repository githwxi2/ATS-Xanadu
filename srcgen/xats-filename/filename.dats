(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("filename.dats")
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

staload "./../xats/filename.sats"

(* ****** ****** *)
//
implement
{}(*tmp*)
print_filename
  (fil) =
  fprint_filename(stdout_ref, fil)
implement
{}(*tmp*)
prerr_filename
  (fil) =
  fprint_filename(stderr_ref, fil)
//
(* ****** ****** *)

(* end of [filename.dats] *)
