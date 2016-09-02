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
//
implement
fprint_label
  (out, lab) =
(
case+ lab of
| LABint(int) => fprint(out, int)
| LABstr(str) => fprint(out, str)
)
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
