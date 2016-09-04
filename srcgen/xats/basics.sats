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
datatype
casekind =
  | CK_case of () // case
  | CK_casepos of () // case+
  | CK_caseneg of () // case-
//
// end of [caskind]
//
typedef ck = casekind
//
(* ****** ****** *)
//
datatype
dcstkind =
  | DCK_fun of ()
  | DCK_val of ()
  | DCK_praxi of ()
  | DCK_prfun of ()
  | DCK_prval of ()
  | DCK_castfn of ()
//
// end of [dcstkind]
//
(* ****** ****** *)
//
datatype
fxtykind =
  | FXK_infix of () // infix
  | FXK_infixl of () // infix left-assoc
  | FXK_infixr of () // infix right-assoc
  | FXK_prefix of () // prefix
  | FXK_postfix of () // postfix
//
// end of [fxtykind]
//
typedef fxk = fxtykind
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
//
fun
print_casekind(casekind): void
fun
prerr_casekind(casekind): void
fun
fprint_casekind : fprint_type(casekind)
//
fun{}
fprint_casekind_ : fprint_type(casekind)
//
overload print with print_casekind
overload prerr with prerr_casekind
overload fprint with fprint_casekind
//
(* ****** ****** *)
//
fun
print_dcstkind(dcstkind): void
fun
prerr_dcstkind(dcstkind): void
fun
fprint_dcstkind : fprint_type(dcstkind)
//
fun{}
fprint_dcstkind_ : fprint_type(dcstkind)
//
overload print with print_dcstkind
overload prerr with prerr_dcstkind
overload fprint with fprint_dcstkind
//
(* ****** ****** *)
//
fun
print_fxtykind(fxtykind): void
fun
prerr_fxtykind(fxtykind): void
fun
fprint_fxtykind : fprint_type(fxtykind)
//
fun{}
fprint_fxtykind_ : fprint_type(fxtykind)
//
overload print with print_fxtykind
overload prerr with prerr_fxtykind
overload fprint with fprint_fxtykind
//
(* ****** ****** *)

(* end of [basics.sats] *)
