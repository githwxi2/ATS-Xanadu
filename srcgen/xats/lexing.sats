(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("lexing.sats")
*)

(* ****** ****** *)
//
#staload
LOC = "./location.sats"
//
typedef loc_t = $LOC.loc_t
//
(* ****** ****** *)

datatype
token_node =
//
  | T_0_ of () // dummy
//
  | T_AT of () // @
//
  | T_BAR of () // |
  | T_BANG of () // !
  | T_BQUOTE of () // `
  | T_BACKSLASH of () // \
//
  | T_COLON of () // :
  | T_COLONLT of () // :<
//
where token =
$rec{
  token_loc= loc_t, token_node= token_node
} (* end of [$rec] *)

typedef tnode = token_node

(* ****** ****** *)
//
fun{}
token_get_loc(token): loc_t
fun{}
token_get_node(token): token_node
//
overload .loc with token_get_loc
//
overload ! with token_get_node
overload .node with token_get_node
//
(* ****** ****** *)
//
fun
fprint_tnode : fprint_type(tnode)
fun{}
fprint_tnode_ : fprint_type(tnode)
//
(* ****** ****** *)
//
fun{}
print_token(token): void
fun{}
prerr_token(token): void
fun{}
fprint_token : fprint_type(token)
//
overload print with print_token
overload prerr with prerr_token
overload fprint with fprint_token
//
(* ****** ****** *)

(* end of [lexing.sats] *)
