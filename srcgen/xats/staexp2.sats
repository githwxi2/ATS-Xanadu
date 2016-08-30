(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("staexp2.sats")
*)

(* ****** ****** *)

abstype symbol
abstype s2rtdat

(* ****** ****** *)
//
datatype s2rtbas =
  | S2RTBASpre of (symbol) // predicative: int, bool, ...
  | S2RTBASimp of (int(*knd*), symbol) // impredicative sorts
  | S2RTBASdat of (s2rtdat) // for user-defined datasorts
//
(* ****** ****** *)
//
fun
print_s2rtbas : (s2rtbas) -> void
fun
prerr_s2rtbas : (s2rtbas) -> void
fun
fprint_s2rtbas : fprint_type(s2rtbas)
//
fun{}
fprint_s2rtbas_ : fprint_type(s2rtbas)
//
overload print with print_s2rtbas
overload prerr with prerr_s2rtbas
overload fprint_print with fprint_s2rtbas
//
(* ****** ****** *)

(* end of [staexp2.sats] *)
