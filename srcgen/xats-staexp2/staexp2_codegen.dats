(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("staexp2_codegen.dats")
*)

(* ****** ****** *)

#staload "./../xats/staexp2.sats"

(* ****** ****** *)
//
#if
defined(FPRINT_S2RTBAS)
#then
//
#codegen2(fprint, s2rtbas, fprint_s2rtbas_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [staexp2_codegen.dats] *)
