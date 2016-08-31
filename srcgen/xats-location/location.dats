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
//
#staload
FIL = "./../xats/filename.sats"
overload
fprint with $FIL.fprint_filename
//
(* ****** ****** *)

#staload "./../xats/location.sats"

(* ****** ****** *)
//
#staload
_(*SYM*) = "./../xats-symbol/symbol.dats"
#staload
_(*FIL*) = "./../xats-filename/filename.dats"
//
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
{}(*tmp*)
print_position
  (pos) =
  fprint_position(stdout_ref, pos)
implement
{}(*tmp*)
prerr_position
  (pos) =
  fprint_position(stderr_ref, pos)
//
implement
{}(*tmp*)
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

local
//
assume
location_type =
$rec{
  fname= fil_t // file name
//
, beg_nrow= int
, beg_ncol= int
, beg_nchar= lint // beg char position
//
, end_nrow= int
, end_ncol= int
, end_nchar= lint // end char position
//
(*
, locpragma= locpragma
*)
//
} (* end of [location_type] *)
//
in (* in-of-local *)
//
implement
{}(*tmp*)
location_get_fname(loc) = loc.fname
//
implement
{}(*tmp*)
location_get_beg_nrow(loc) = loc.beg_nrow
implement
{}(*tmp*)
location_get_beg_ncol(loc) = loc.beg_ncol
implement
{}(*tmp*)
location_get_beg_nchar(loc) = loc.beg_nchar
//
implement
{}(*tmp*)
location_get_end_nrow(loc) = loc.end_nrow
implement
{}(*tmp*)
location_get_end_ncol(loc) = loc.end_ncol
implement
{}(*tmp*)
location_get_end_nchar(loc) = loc.end_nchar
//
//
implement
location_make_fil_pos_pos
  (fil, pos1, pos2) = let
//
fun
auxmain
(
  pos1: &pos_t, pos2: &pos_t
) : location =
(
//
$rec{
//
fname= fil
,
beg_nrow= pos1.nrow(),
beg_ncol= pos1.ncol(),
beg_nchar= pos1.nchar()
,
end_nrow= pos2.nrow(),
end_ncol= pos2.ncol(),
end_nchar= pos2.nchar()
//
} (* end of [$rec] *)
//
) (* end of [auxmain] *)
in
//
if pos1.nchar() <= pos2.nchar()
  then auxmain(pos1, pos2) else auxmain(pos2, pos1)
//
end // end of [implement]

end // end of [local]

(* ****** ****** *)

implement
location_combine
  (loc1, loc2) =
  aux1(loc1, loc2) where
{
//
fun
aux1
(
  loc1: loc_t, loc2: loc_t
) : loc_t = let
//
val nb1 = loc1.beg_nchar()
val nb2 = loc2.beg_nchar()
//
in
//
ifcase
  | nb1 = nb2 =>
    if
    loc1.end_nchar() >= loc2.end_nchar()
    then loc1 else loc2
  | nb1 < nb2 => aux2(loc1, loc2)
  | _(*else*) => aux2(loc2, loc1)
// end of [ifcase]
end (* end of [aux1] *)
//
and
aux2
(
  loc1: loc_t, loc2: loc_t
) : loc_t = (
//
if
loc1.end_nchar() >= loc2.end_nchar()
then loc1
else let
  var pos1: pos_t
  var pos2: pos_t
  val ((*void*)) =
  position_initize
  (
    pos1, loc1.beg_nrow(), loc1.beg_ncol(), loc1.beg_nchar()
  ) (* position_initize *)
  val ((*void*)) =
  position_initize
  (
    pos2, loc2.end_nrow(), loc2.end_ncol(), loc2.end_nchar()
  ) (* position_initize *)
//
in
  location_make(pos1, pos2)
end // end of [if]
//
) (* end of [aux2] *)
//
} (* end of [location_combine] *)

(* ****** ****** *)
//
implement
location_make_pos_pos
  (pos1, pos2) = let
//
val opt =
  $FIL.the_filenamelst_top()
//
local
implement
$FIL.filenameopt_unsome$error<>
(
// argless
) = prerrln!
(
  "INTERROR(xatsopt): location_make_pos_pos: NotSomeExn()"
) (* end of [println!] *)
in(*in-of-local*)
val fil =
  $FIL.filenameopt_unsome<>(opt)
end // end of [local]
//
in
  location_make(fil, pos1, pos2)
end (* end of [location_make_pos_pos] *)
//
(* ****** ****** *)
//
implement
print_location
  (loc) =
  fprint_location(stdout_ref, loc)
implement
prerr_location
  (loc) =
  fprint_location(stderr_ref, loc)
//
implement
fprint_location
  (out, loc) = let
//
var pos1: pos_t
var pos2: pos_t
//
val () =
position_initize
( pos1
, loc.beg_nrow(), loc.beg_ncol(), loc.beg_nchar()
) (* position_initize *)
val () =
position_initize
( pos2
, loc.end_nrow(), loc.end_ncol(), loc.end_nchar()
) (* position_initize *)
//
in
//
fprint! (out, loc.fname(), ": ", pos1, " -- ", pos2)
//
end (* end of [fprint_location] *)
//
(* ****** ****** *)

(* end of [location.dats] *)
