(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("symbol.dats")
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

#staload "./../xats/symbol.sats"

(* ****** ****** *)
//
extern
fun
symbol_stamp_new(): intGte(0)
//
local
//
val
theStamp_ref = ref<intGte(0)>(0)
//
in (* in-of-local *)

implement
symbol_stamp_new() = let
//
val n = !theStamp_ref in !theStamp_ref := n+1; n
//
end // end of [symbol_stamp_new]

end // end of [local]
//
(* ****** ****** *)
//
implement
print_symbol
  (sym) =
  fprint_symbol(stdout_ref, sym)
implement
prerr_symbol
  (sym) =
  fprint_symbol(stderr_ref, sym)
//
(* ****** ****** *)
//
implement
fprint_symbol
  (out, sym) =
  fprint_string(out, sym.name())
//
(* ****** ****** *)
//
implement
eq_symbol_symbol
  (x1, x2) =
  (compare(x1, x2) = 0)
implement
neq_symbol_symbol
  (x1, x2) =
  (compare(x1, x2) != 0)
//
implement
compare_symbol_symbol
  (x1, x2) =
  compare(x1.stamp(), x2.stamp())
//
(* ****** ****** *)
//
implement
symbolopt_is_none
  (opt) = iseqz($UN.cast2ptr(opt))
implement
symbolopt_is_some
  (opt) = isneqz($UN.cast2ptr(opt))
//
(* ****** ****** *)
//
implement
print_symbolopt
  (opt) =
  fprint_symbolopt(stdout_ref, opt)
implement
prerr_symbolopt
  (opt) =
  fprint_symbolopt(stderr_ref, opt)
//
implement
fprint_symbolopt
  (out, opt) =
(
//
if
iseqz(opt)
then fprint(out, "(none)")
else fprint_symbol(out, $UN.cast(opt))
//
) (* end of [fprint_symbolopt] *)
//
(* ****** ****** *)
//
datatype
symbol() =
SYMBOL() of
(
  string // name
, intGte(0) // stamp
) (* datatype symbol *)
//
(* ****** ****** *)

assume symbol_type = symbol()

(* ****** ****** *)
//
implement
symbol_get_name
  (sym) = let
//
val+SYMBOL(name, _) = sym in name
//
end // end of [symbol_get_name]
//
implement
symbol_get_stamp
  (sym) = let
//
val+SYMBOL(_, stamp) = sym in stamp
//
end // end of [symbol_get_stamp]
//
(* ****** ****** *)
//
extern
fun
__symbol_make_name
  (name: string): symbol
//
implement
__symbol_make_name
  (name) =
  SYMBOL(name, stamp) where
{
  val stamp = symbol_stamp_new()
}
//
(* ****** ****** *)

local
//
#include "./symbol_table.dats"
//
in (*nothing*) end

(* ****** ****** *)
//
implement
the_symbol_nil = symbol_make("")
//
implement
the_symbol_fil_stdin = symbol_make("__STDIN__")
implement
the_symbol_fil_stdout = symbol_make("__STDOUT__")
//
(* ****** ****** *)

(* end of [symbol.dats] *)
