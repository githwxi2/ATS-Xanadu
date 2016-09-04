(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("basics_codegen.dats")
*)

(* ****** ****** *)

#staload "./../xats/basics.sats"

(* ****** ****** *)
//
// HX: for codegen
//
(* ****** ****** *)
//
#if
defined(FPRINT_FUNKIND)
#then
//
#codegen2(fprint, funkind, fprint_funkind_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(FPRINT_VALKIND)
#then
//
#codegen2(fprint, valkind, fprint_valkind_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [basics_codegen.dats] *)
