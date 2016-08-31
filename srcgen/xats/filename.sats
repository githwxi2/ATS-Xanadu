(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("filename.sats")
*)

(* ****** ****** *)
//
#staload
SYM = "./symbol.sats"
//
typedef symbol = $SYM.symbol
//
(* ****** ****** *)
//
abstype filename_type = ptr
//
typedef fil_t = filename_type
typedef filename = filename_type
//
(* ****** ****** *)
//
abstype filenameopt_type = ptr
//
typedef filopt = filenameopt_type
typedef filenameopt = filenameopt_type
//
(* ****** ****** *)
//
fun{}
filename_get_givename(fil_t): string
fun{}
filename_get_partname(fil_t): string
fun{}
filename_get_fullname(fil_t): symbol
//
overload .givename with filename_get_givename
overload .partname with filename_get_partname
overload .fullname with filename_get_fullname
//
(* ****** ****** *)
//
fun{}
filename_make_give_part_full
(
  give: string, part: string, full: string
) : filename // end-of-function
//
overload
filename_make with filename_make_give_part_full
//
(* ****** ****** *)
//
fun{}
print_filename(fil_t): void
fun{}
prerr_filename(fil_t): void
fun{}
fprint_filename(FILEref, fil_t): void
//
overload print with print_filename
overload prerr with prerr_filename
overload fprint with fprint_filename
//
(* ****** ****** *)
//
fun{}
filenameopt_is_none : filopt -> bool
fun{}
filenameopt_is_some : filopt -> bool
//
overload iseqz with filenameopt_is_none
overload isneqz with filenameopt_is_some
//
(* ****** ****** *)
//
fun{}
print_filenameopt(filopt): void
fun{}
prerr_filenameopt(filopt): void
fun{}
fprint_filenameopt(FILEref, filopt): void
//
overload print with print_filenameopt
overload prerr with prerr_filenameopt
overload fprint with fprint_filenameopt
//
(* ****** ****** *)
//
fun the_filenamelst_top(): fil_t
//
(* ****** ****** *)

(* end of [filename.sats] *)
