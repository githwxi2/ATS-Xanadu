(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("label.dats")
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

#staload "./../xats/label.sats"

(* ****** ****** *)
//
implement
print_label
  (lab) =
  fprint_label(stdout_ref, lab)
implement
prerr_label
  (lab) =
  fprint_label(stderr_ref, lab)
//
(* ****** ****** *)
//
implement
lt_label_label
  (x1, x2) = (compare(x1, x2) < 0)
implement
lte_label_label
  (x1, x2) = (compare(x1, x2) <= 0)
//
(* ****** ****** *)
//
datatype
label() =
  | LABint of int
  | LABstr of string
//
(* ****** ****** *)

assume label_type = label()

(* ****** ****** *)
//
implement
label_make_int(i) = LABint(i)
implement
label_make_string(i) = LABstr(i)
//
(* ****** ****** *)

implement
label_is_int(lab) =
(
case+ lab of
| LABint _ => true | LABstr _ => false
) (* end of [label_is_int] *)
implement
label_is_string(lab) =
(
case+ lab of
| LABint _ => false | LABstr _ => true
) (* end of [label_is_string] *)

(* ****** ****** *)
//
implement
label_get_int(lab) =
(
case+ lab of
| LABint(i) => Some_vt(i) | LABstr _ => None_vt()
) (* end of [label_get_int] *)
implement
label_get_string(lab) =
(
case+ lab of
| LABstr(s) => Some_vt(s) | LABint _ => None_vt()
) (* end of [label_get_int] *)
//
(* ****** ****** *)
//
implement
fprint_label
  (out, lab) =
(
case+ lab of
| LABint(int) => fprint(out, int)
| LABstr(str) => fprint(out, str)
) (* end of [fprint_label] *)
//
(* ****** ****** *)
//
implement
compare_label_label
  (x1, x2) =
(
case+ x1 of
| LABint(i1) =>
  (case+ x2 of
   | LABint(i2) => compare(i1, i2) | LABstr(s2) => ~1
  ) (* LABint *)
| LABstr(s1) =>
  (case+ x2 of
   | LABint(i2) =>  1 | LABstr(s2) => compare(s1, s2) 
  )
) (* end of [compare_label_label] *)
//
(* ****** ****** *)

(* end of [label.dats] *)
