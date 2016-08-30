(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("filename.dats")
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

#staload "./../xats/symbol.sats"
#staload "./../xats/filename.sats"

(* ****** ****** *)
//
implement
{}(*tmp*)
print_filename
  (fil) =
  fprint_filename(stdout_ref, fil)
implement
{}(*tmp*)
prerr_filename
  (fil) =
  fprint_filename(stderr_ref, fil)
//
(* ****** ****** *)
//
implement
{}(*tmp*)
fprint_filename(out, fil) =
  fprint_symbol(out, fil.fullname())
//
(* ****** ****** *)
//
implement
{}(*tmp*)
filenameopt_is_none
  (opt) = iseqz($UN.cast2ptr(opt))
implement
{}(*tmp*)
filenameopt_is_some
  (opt) = isneqz($UN.cast2ptr(opt))
//
(* ****** ****** *)
//
implement
{}(*tmp*)
print_filenameopt
  (opt) =
  fprint_filenameopt(stdout_ref, opt)
implement
{}(*tmp*)
prerr_filenameopt
  (opt) =
  fprint_filenameopt(stderr_ref, opt)
//
implement
{}(*tmp*)
fprint_filenameopt
  (out, opt) =
(
//
if
iseqz(opt)
then fprint(out, "(none)")
else fprint_filename(out, $UN.cast(opt))
//
) (* end of [fprint_filenameopt] *)
//
(* ****** ****** *)

datatype
filename() =
FILENAME() of
(
  (*givename:*)string
, (*partname:*)string
, (*fullname:*)symbol
) (* datatype filename *)

(* ****** ****** *)

assume filename_type = filename()

(* ****** ****** *)
//
implement
{}(*tmp*)
filename_get_givename
  (FILENAME(givename, _, _)) = givename
implement
{}(*tmp*)
filename_get_partname
  (FILENAME(_, partname, _)) = partname
implement
{}(*tmp*)
filename_get_fullname
  (FILENAME(_, _, fullname)) = fullname
//
(* ****** ****** *)
//
implement
{}(*tmp*)
filename_make_give_part_full
  (give, part, full) =
  FILENAME(give, part, symbol_make(full))
//
(* ****** ****** *)

(* end of [filename.dats] *)
