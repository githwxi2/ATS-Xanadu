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
staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)

staload "./../xats/location.sats"

(* ****** ****** *)

implement
{}(*tmp*)
position_initize_dummy
  (pos0) =
(
  position_initize(pos0, 0, 0, ~1L)
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

(* end of [location.dats] *)
