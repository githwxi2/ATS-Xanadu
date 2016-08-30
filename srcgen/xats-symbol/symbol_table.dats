(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)
//
// HX-2016-08-29:
// it should be embedded in symbol.dats
//
(* ****** ****** *)
//
staload "libats/SATS/hashtbl_chain.sats"
//
staload _(*anon*) = "libats/DATS/qlist.dats"
staload _(*anon*) = "libats/DATS/hashfun.dats"
staload _(*anon*) = "libats/DATS/linmap_list.dats"
//
staload _(*anon*) = "libats/DATS/hashtbl_chain.dats"
//
(* ****** ****** *)
//
typedef key = string
typedef itm = symbol
//
vtypedef myhashtbl = hashtbl(key, itm)
//
val
theSymbol_tbl =
$UN.castvwtp0{ptr}
  (hashtbl_make_nil<key,itm>(i2sz(1024)))
//
(* ****** ****** *)

implement
symbol_search
  (name) = res where
{
//
val
theSymbol_tbl =
  $UN.castvwtp0{myhashtbl}(theSymbol_tbl)
//
var res: symbol?
//
val found =
hashtbl_search<key,itm>(theSymbol_tbl, name, res)
//
val res = (
//
if
found
then let
  prval () = opt_unsome(res)
in
  let val x0 =
    $UN.cast(res); prval () = topize(res) in x0 end
  // end of [let]
end // end of [then]
else let
  prval () = opt_unnone(res) in $UN.cast(the_null_ptr)
end // end of [else]
//
(* end of [if] *)
//
) : symbolopt // end of [val]
//
prval ((*returned*)) = $UN.cast2void(theSymbol_tbl)
//
} (* end of [symbol_search] *)

(* ****** ****** *)
//
implement
symbol_make_name
  (name) = let
//
val
opt = symbol_search(name)
//
in
//
if
iseqz(opt)
then sym where
{
//
val sym =
  __symbol_make_name(name)
//
val
theSymbol_tbl =
  $UN.castvwtp0{myhashtbl}(theSymbol_tbl)
//
val () =
  hashtbl_insert_any(theSymbol_tbl, name, sym)
//
prval ((*returned*)) = $UN.cast2void(theSymbol_tbl)
//
} (* end of [then] *)
else $UN.cast{symbol}(opt)
//
end // end of [symbol_make_name]
//
(* ****** ****** *)

(* end of [symbol_table.dats] *)
