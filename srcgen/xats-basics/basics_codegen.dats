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
//
#if
defined(FPRINT_CASEKIND)
#then
//
#codegen2(fprint, casekind, fprint_casekind_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(FPRINT_DCSTKIND)
#then
//
#codegen2(fprint, dcstkind, fprint_dcstkind_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(FPRINT_FXTYKIND)
#then
//
#codegen2(fprint, fxtykind, fprint_fxtykind_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(FPRINT_FUNCLO)
#then
//
#codegen2(fprint, funclo, fprint_funclo_)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [basics_codegen.dats] *)
