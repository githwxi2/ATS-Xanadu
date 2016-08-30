(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("location.dats")
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

#staload "./../xats/location.sats"

(* ****** ****** *)
//
implement
{}(*tmp*)
position_is_dummy
  (pos0) = isltz(pos0.nchar())
//
(* ****** ****** *)

implement
{}(*tmp*)
position_initize_dummy
  (pos0) =
(
  position_initize(pos0, ~1, ~1, ~1L)
) (* position_initize_dummy *)

(* ****** ****** *)

implement
{}(*tmp*)
position_initize_nrow_ncol_nchar
(
  pos0, nrow, ncol, nchar
) = // position_initize_nrow_ncol_nchar
{
//
prval () =
$UN.castview2void_at{pos_t}(view@pos0)
//
  val () = pos0.nrow(nrow)
  val () = pos0.ncol(ncol)
  val () = pos0.nchar(nchar)
//
} (* end of [position_initize_nrow_ncol_nchar] *)

(* ****** ****** *)
//
implement
print_position
  (pos) =
  fprint_position(stdout_ref, pos)
implement
prerr_position
  (pos) =
  fprint_position(stderr_ref, pos)
//
implement
fprint_position
  (out, pos) = let
//
val nrow = pos.nrow()
val ncol = pos.ncol()
val nchar = pos.nchar()
//
in
//
ignoret(
$extfcall
(
  int, "fprintf"
, out, "%li(line=%i, offs=%i)", nchar+1L, nrow+1, ncol+1
) // $extfcall
) (* ignoret *)
//
end // end of [fprint_position]
//
(* ****** ****** *)

(* end of [location.dats] *)
