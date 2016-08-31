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
filename_none
  ((*void*)) = $UN.cast(the_null_ptr)
//
implement
{}(*tmp*)
filename_some(fil) = $UN.cast{filopt}(fil)
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
filenameopt_unsome
  (opt) = (
//
if
isneqz(opt)
then
$UN.cast{fil_t}(opt)
else
$raise(NotSomeExn(*void*)) where
{
//
val () = filenameopt_unsome$error()
//
} (* end of [else] *)
//
) (* end of [filenameopt_unsome_errloc] *)
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
the_filename_nil =
  FILENAME("", "", the_symbol_nil)
implement
the_filename_stdin =
  FILENAME("", "", the_symbol_fil_stdin)
//
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

local
//
vtypedef
filist_vt = List0_vt(filename)
//
assume the_filenamelst_push_v = unit_v
//
val
the_filenamelst_ref = ref<filist_vt>(list_vt_nil)
//
in (* in-of-local *)

implement
the_filenamelst_top
  ((*void*)) = let
//
val
(vbox(pf)|p0) =
ref_get_viewptr(the_filenamelst_ref)
//
in
//
case+ !p0 of
| list_vt_nil() => filename_none()
| list_vt_cons(x, _) => filename_some(x)
//
end // end of [the_filenamelst_top]

implement
the_filenamelst_pop
  (pfpush | (*void*)) = let
//
prval unit_v() = pfpush
//
val
(vbox(pf)|p0) =
ref_get_viewptr(the_filenamelst_ref)
//
in
//
case+ !p0 of
| list_vt_nil() => filename_none()
| ~list_vt_cons
    (x, xs) => (!p0 := xs; filename_some(x))
  // list_vt_cons
//
end // end of [the_filenamelst_pop]

implement
the_filenamelst_push
  (fil) = let
//
val
(vbox(pf)|p0) =
ref_get_viewptr(the_filenamelst_ref)
//
in
//
!p0 := list_vt_cons(fil, !p0); (unit_v(*pfpush*)|())
//
end // end of [the_filenamelst_push]

end // end of [local]

(* ****** ****** *)

(* end of [filename.dats] *)
