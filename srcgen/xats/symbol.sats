(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("symbol.sats")
*)

(* ****** ****** *)
//
abstype symbol_type = ptr
//
typedef sym_t = symbol_type
typedef symbol = symbol_type
//
(* ****** ****** *)
//
fun
print_symbol(sym_t): void
fun
prerr_symbol(sym_t): void
fun
fprint_symbol(FILEref, sym_t): void
//
overload print with print_symbol
overload prerr with prerr_symbol
overload fprint with fprint_symbol
//
(* ****** ****** *)

(* end of [symbol.sats] *)
