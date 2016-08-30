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

abstype symbolopt_type = ptr
abstype symbolopt = symbolopt_type

(* ****** ****** *)
//
fun
symbol_get_name(sym_t): string
fun
symbol_get_stamp(sym_t): intGte(0)
//
overload .name with symbol_get_name
overload .stamp with symbol_get_stamp
//
(* ****** ****** *)

fun
symbol_search : string -> symbolopt

(* ****** ****** *)
//
fun
symbol_make_name(string): sym_t
//
overload
symbol_make with symbol_make_name
//
(* ****** ****** *)
//
fun{}
print_symbol(sym_t): void
fun{}
prerr_symbol(sym_t): void
fun{}
fprint_symbol(FILEref, sym_t): void
//
overload print with print_symbol
overload prerr with prerr_symbol
overload fprint with fprint_symbol
//
(* ****** ****** *)
//
fun
eq_symbol_symbol(sym_t, sym_t): bool
fun
neq_symbol_symbol(sym_t, sym_t): bool
//
fun
compare_symbol_symbol(sym_t, sym_t): int
//
overload = with eq_symbol_symbol
overload != with neq_symbol_symbol
overload compare with compare_symbol_symbol
//
(* ****** ****** *)
//
fun
symbolopt_is_none : symbolopt -> bool
fun
symbolopt_is_some : symbolopt -> bool
//
overload iseqz with symbolopt_is_none
overload isneqz with symbolopt_is_some
//
(* ****** ****** *)

(* end of [symbol.sats] *)