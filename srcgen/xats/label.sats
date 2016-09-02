(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("label.sats")
*)

(* ****** ****** *)

abstype label_type = ptr
typedef lab_t = label_type
typedef label = label_type

(* ****** ****** *)
//
fun
label_make_int(int): label
fun
label_make_string(string): label
//
overload
label_make with label_make_int
overload
label_make with label_make_string
//
(* ****** ****** *)

fun
print_label : print_type(label)
fun
prerr_label : prerr_type(label)
fun
fprint_label : fprint_type(label)

(* ****** ****** *)
//
fun
lt_label_label: (label, label) -> bool
fun
lte_label_label: (label, label) -> bool
fun
compare_label_label: compare_type(label)
//
overload < with lt_label_label
overload <= with lt_label_label
overload compare with compare_label_label
//
(* ****** ****** *)

(* end of [label.sats] *)
