(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("basics.sats")
*)

(* ****** ****** *)
//
#define
XATS_MAJOR_VERSION 0
#define
XATS_MINOR_VERSION 0
#define
XATS_MICRO_VERSION 0
//
macdef
XATS_fVER(MAJOR, MINOR, MICRO) =
  (1000 * (1000 * ,(MAJOR) + ,(MINOR)) + ,(MICRO))
//
macdef
XATS_VERSION() =
  XATS_fVER(XATS_MAJOR_VERSION, XATS_MINOR_VERSION, XATS_MICRO_VERSION)
//
(* ****** ****** *)
//
datatype
funkind =
//
  | FK_fn // nonrec fun
  | FK_fnx // tailrec fun
  | FK_fun // recursive fun
//
  | FK_prfn // nonrec proof fun
  | FK_prfun // recursive proof fun
//
  | FK_praxi // proof axiom
//
  | FK_castfn // casting fun
//
// end of [funkind]
//
typedef fk = funkind
//
(* ****** ****** *)
//
datatype
valkind =
//
  | VK_val // val
//
  | VK_val_pos // val+
  | VK_val_neg // val-
(*
  | VK_mcval // mcval: for model-checking
*)
  | VK_prval // prval: for theorem-proving
//
// end of [valkind]
//
typedef vk = valkind
//
(* ****** ****** *)
//
fun
print_funkind(funkind): void
fun
prerr_funkind(funkind): void
fun
fprint_funkind : fprint_type(funkind)
//
fun{}
fprint_funkind_ : fprint_type(funkind)
//
overload print with print_funkind
overload prerr with prerr_funkind
overload fprint with fprint_funkind
//
(* ****** ****** *)
//
fun
print_valkind(valkind): void
fun
prerr_valkind(valkind): void
fun
fprint_valkind : fprint_type(valkind)
//
fun{}
fprint_valkind_ : fprint_type(valkind)
//
overload print with print_valkind
overload prerr with prerr_valkind
overload fprint with fprint_valkind
//
(* ****** ****** *)

(* end of [basics.sats] *)