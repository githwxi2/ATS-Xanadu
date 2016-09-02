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
lt_label_label
  (x1, x2) = (compare(x1, x2) <= 0)
//
(* ****** ****** *)
//
datatype
label() =
  | LABELint of int
  | LABELstr of string
//
(* ****** ****** *)

assume label_type = label()

(* ****** ****** *)
//
implement
fprint_label
  (out, lab) =
(
case+ lab of
| LABELint(int) => fprint(out, int)
| LABELstr(str) => fprint(out, str)
)
//
(* ****** ****** *)
//
implement
compare_label_label
  (x1, x2) =
(
case+ x1 of
| LABELint(i1) =>
  (case+ x2 of
   | LABELint(i2) => compare(i1, i2) | LABELstr(s2) => ~1
  ) (* LABELint *)
| LABELstr(s1) =>
  (case+ x2 of
   | LABELint(i2) =>  1 | LABELstr(s2) => compare(s1, s2) 
  )
) (* end of [compare_label_label] *)
//
(* ****** ****** *)

(* end of [label.dats] *)
