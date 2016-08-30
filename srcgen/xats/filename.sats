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
abstype filename_type = ptr
//
typedef fil_t = filename_type
typedef filename = filename_type
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

(* end of [filename.sats] *)
