(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_filename_set("staexp2_print.dats")
*)

(* ****** ****** *)

staload "./../xats/staexp2.sats"

(* ****** ****** *)
//
#ifdef
CODEGEN
#then
//
#codegen2
(
  fprint, s2rtbas, fprint_s2rtbas_
) (* codegen2 *)
//
#else
#if
defined(XATSOPT)
#then
//
#include
"./CODEGEN/staexp2_fprint_s2rtbas_impl.hats"
//
implement
fprint_s2rtbas(out, x0) = fprint_s2rtbas_<>(out, x0)
//
#endif // end of [ifdef]
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [staexp2_print.dats] *)
