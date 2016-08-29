(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("location.sats")
*)

(* ****** ****** *)

%{$
//
#include \
"./xats-location/location.cats"
//
%} // end of [%{$]

(* ****** ****** *)
//
abst0ype
position_t0ype =
$extype"xatsopt_position_t"
//
typedef pos_t = position_t0ype
typedef position = position_t0ype
//
(* ****** ****** *)
//
abstype location_type
typedef loc_t = location_type
typedef location = location_type
//
(* ****** ****** *)
//
fun
position_get_nrow
  (&pos_t):<fun> int
  = "mac#xatspot_position_get_nrow"
fun
position_set_nrow
  (&pos_t, int):<fun> void
  = "mac#xatspot_position_set_nrow"
//
fun
position_get_ncol
  (&pos_t):<fun> int
  = "mac#xatspot_position_get_ncol"
fun
position_set_ncol
  (&pos_t, int):<fun> void
  = "mac#xatspot_position_set_ncol"
//
fun
position_get_nchar
  (&pos_t):<fun> lint
  = "mac#xatspot_position_get_nchar"
fun
position_set_nchar
  (&pos_t, lint):<fun> void
  = "mac#xatspot_position_set_nchar"
//
overload .nrow with position_get_nrow
overload .nrow with position_set_nrow
overload .ncol with position_get_ncol
overload .ncol with position_set_ncol
overload .nchar with position_get_nchar
overload .nchar with position_set_nchar
//
(* ****** ****** *)
//
fun{}
position_initize_dummy
  (pos0: &pos_t? >> _):<!wrt> void
fun{}
position_initize_nrow_ncol_nchar
  (pos0: &pos_t? >> _, int, int, lint):<!wrt> void
//
overload
position_initize with position_initize_dummy
overload
position_initize with position_initize_nrow_ncol_nchar
//
(* ****** ****** *)
//
fun
print_position(&pos_t): void
fun
prerr_position(&pos_t): void
fun
fprint_position(FILEref, &pos_t): void
//
overload print with print_position
overload prerr with prerr_position
overload fprint with fprint_position
//
(* ****** ****** *)

(* end of [location.sats] *)
