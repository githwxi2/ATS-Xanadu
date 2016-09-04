(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("counter.sats")
*)

(* ****** ****** *)
//
abst@ype
count_t0ype = int
//
typedef count = count_t0ype
//
(* ****** ****** *)

abstype counter_type = ptr
typedef counter = counter_type

(* ****** ****** *)
//
fun
print_count : count -> void
fun
prerr_count : count -> void
fun
fprint_count : fprint_type(count)
//
overload print with print_count
overload prerr with prerr_count
overload fprint with fprint_count
//
(* ****** ****** *)
//
fun
lt_count_count
  (count, count):<> bool
fun
lte_count_count
  (count, count):<> bool
//
overload < with lt_count_count
overload <= with lte_count_count
//
fun
compare_count_count
  (c0: count, c1: count):<> int
//
overload
compare with compare_count_count
//
(* ****** ****** *)
//
fun
counter_make_nil((*0*)): counter
//
overload
counter_make with counter_make_nil
//
(* ****** ****** *)
//
fun counter_get(counter): count
//
overload ! with counter_get
overload .get with counter_get
//
fun counter_getinc(counter): count
fun counter_incget(counter): count
//
overload .getinc with counter_getinc
overload .incget with counter_incget
//
(* ****** ****** *)

(* end of [counter.sats] *)
