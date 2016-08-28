(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_filename_set("staexp2.sats")
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
(*
##xatsopt_fprint(s2rtbas)
*)
#if
defined(XATSOPT)
#then
#include
"./CODEGEN/staexp2_fprint_s2rtbas_decl.hats"
#endif // end of [ifdef]
//
(* ****** ****** *)

(* end of [staexp2.sats] *)
