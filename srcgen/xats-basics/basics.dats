(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("basics.dats")
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

(* ****** ****** *)

#define COMPILE 1

(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/basics_fprint_funkind_impl.hats"
//
implement
print_funkind(x0) = fprint_funkind(stdout_ref, x0)
implement
prerr_funkind(x0) = fprint_funkind(stderr_ref, x0)
implement
fprint_funkind(out, x0) = fprint_funkind_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/basics_fprint_valkind_impl.hats"
//
implement
print_valkind(x0) = fprint_valkind(stdout_ref, x0)
implement
prerr_valkind(x0) = fprint_valkind(stderr_ref, x0)
implement
fprint_valkind(out, x0) = fprint_valkind_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/basics_fprint_casekind_impl.hats"
//
implement
print_casekind(x0) = fprint_casekind(stdout_ref, x0)
implement
prerr_casekind(x0) = fprint_casekind(stderr_ref, x0)
implement
fprint_casekind(out, x0) = fprint_casekind_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/basics_fprint_dcstkind_impl.hats"
//
implement
print_dcstkind(x0) = fprint_dcstkind(stdout_ref, x0)
implement
prerr_dcstkind(x0) = fprint_dcstkind(stderr_ref, x0)
implement
fprint_dcstkind(out, x0) = fprint_dcstkind_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)
//
#if
defined(COMPILE)
#then
//
#include
"./CODEGEN/basics_fprint_fxtykind_impl.hats"
//
implement
print_fxtykind(x0) = fprint_fxtykind(stdout_ref, x0)
implement
prerr_fxtykind(x0) = fprint_fxtykind(stderr_ref, x0)
implement
fprint_fxtykind(out, x0) = fprint_fxtykind_<>(out, x0)
//
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [basics.dats] *)
