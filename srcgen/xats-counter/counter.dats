(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("counter.dats")
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

#staload "./../xats/counter.sats"

(* ****** ****** *)
//
implement
print_count
  (cnt) =
  fprint_count(stdout_ref, cnt)
implement
prerr_count
  (cnt) =
  fprint_count(stderr_ref, cnt)
//
(* ****** ****** *)
//
implement
lt_count_count =
  lam(c0, c1) => compare(c0, c1) < 0
implement
lte_count_count =
  lam(c0, c1) => compare(c0, c1) <= 0
//
(* ****** ****** *)

assume count_t0ype = int
assume counter_type = ref(count)

(* ****** ****** *)
//
implement
fprint_count
  (out, cnt) = fprint_int(out, cnt)
//
(* ****** ****** *)
//
implement
compare_count_count =
  lam(c0, c1) => g0int_compare(c0, c1)
//
(* ****** ****** *)

implement
counter_make() = ref_make_elt<count>(0)

(* ****** ****** *)
//
implement
counter_get(cntr) = ref_get_elt<count>(cntr)
//
implement
counter_getinc(cntr) = let
  val n0 = ref_get_elt<count>(cntr)
  val n1 = n0 + 1
  val () = ref_set_elt<count>(cntr, n1) in n0
end // end of [counter_getinc]
implement
counter_incget(cntr) = let
  val n0 = ref_get_elt<count>(cntr)
  val n1 = n0 + 1
  val () = ref_set_elt<count>(cntr, n1) in n1
end // end of [counter_incget]

(* ****** ****** *)

(* end of [counter.dats] *)
