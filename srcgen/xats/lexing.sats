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
"./basics.sats"
//
(* ****** ****** *)
//
#staload
LOC = "./location.sats"
//
typedef loc_t = $LOC.loc_t
//
(* ****** ****** *)
//
abstype
token_type = ptr
typedef
token = token_type
//
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
  | T_DOLLAR of () // $
//
  | T_DOT of () // .
  | T_DOTDOT of () // ..
  | T_DOTDOTDOT of () // ...
//
  | T_DOTINT_ of int // .[0-9]+
//
  | T_EQ of () // =
  | T_EQGT of () // =>
  | T_EQLT of () // =<
  | T_EQLTGT of () // =<>
  | T_EQSLASHEQGT of () // =/=>
  | T_EQGTGT of () // =>>
  | T_EQSLASHEQGTGT of () // =/=>>
//
  | T_FIX_ of (int) // fix and fix@
  | T_FOR_ of (int) // for and for*
  | T_FUN_ of (funkind) // fn, fnx, fun, prfn and prfun
(*
  | T_FIXITY_ of (fxtykind) // infix, infixl, infixr, prefix, postfix
*)
//
  | T_VAL_ of (valkind) // val, val+, val-, prval
  | T_VAR_ of (int(*knd*)) // knd = 0/1: var/prvar
//
  | T_WHEN of () // when
  | T_WHERE of () // where
//
  | T_WHILE_ of (int) // while and while*
//
typedef tnode = token_node
//
(* ****** ****** *)
//
abstype
lexerr_type
typedef
lexerr = lexerr_type
//
datatype
lexerr_node =
  | LXE_CHAR_oct of ()
  | LXE_CHAR_hex of ()
  | LXE_CHAR_unclose of ()
//
  | LXE_QUOTE_dangling of ()
//
  | LXE_STRING_unclose of ()
  | LXE_STRING_char_oct of ()
  | LXE_STRING_char_hex of ()
//
  | LXE_EXTCODE_unclose of ()
//
  | LXE_COMMENT_block_unclose of ()
//
  | LXE_DIGIT_oct_89 of (char)
//
  | LXE_FEXPONENT_empty of ()
//
  | LXE_UNSUPPORTED_char of (char)
// end of [lexerr_node]
//
typedef lxenode = lexerr_node
//
(* ****** ****** *)

val T_ABSPROP : tnode
and T_ABSTYPE : tnode
and T_ABST0YPE : tnode
and T_ABSVIEW : tnode
and T_ABSVTYPE : tnode
and T_ABSVT0YPE : tnode

(* ****** ****** *)

val T_CASE : tnode
and T_CASE_pos : tnode
and T_CASE_neg : tnode

(* ****** ****** *)

val T_DATAPROP : tnode
and T_DATATYPE : tnode
and T_DATAVIEW : tnode
and T_DATAVTYPE : tnode

(* ****** ****** *)
//
val T_FN : tnode // fn: non-recursive
and T_FNX : tnode // fnx: tail-recursive
and T_FUN : tnode // fun: generally recursive
//
val T_PRFN : tnode // prfn: non-recursive
and T_PRFUN : tnode // prfun: generally recursive
//
val T_PRAXI : tnode // praxi/prfun: axiom/function
//
val T_CASTFN : tnode // castfn: casting function
//
val T_FIX : tnode // fixed-point
and T_FIXAT : tnode // flat fixed-point
//
val T_FOLD : tnode
and T_FOLDAT : tnode // fold@ : folding
//
val T_FOR : tnode // for: for-loop
and T_FORSTAR : tnode // for*: anonotated for-loop
//
val T_WHILE : tnode // while: while-loop
and T_WHILESTAR : tnode // while*: anonotated while-loop
//
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
print_token(token): void
fun
prerr_token(token): void
fun
fprint_token : fprint_type(token)
//
overload print with print_token
overload prerr with prerr_token
overload fprint with fprint_token
//
(* ****** ****** *)
//
fun
print_tnode(tnode): void
fun
prerr_tnode(tnode): void
fun
fprint_tnode : fprint_type(tnode)
//
fun{}
fprint_tnode_ : fprint_type(tnode)
//
overload print with print_tnode
overload prerr with prerr_tnode
overload fprint with fprint_tnode
//
(* ****** ****** *)
//
fun{}
lexerr_get_loc : lexerr -> loc_t
fun{}
lexerr_get_node : lexerr -> lexerr_node
//
overload ! with lexerr_get_node
overload .loc with lexerr_get_loc
overload .node with lexerr_get_node
//
(* ****** ****** *)
//
fun
print_lexerr(lexerr): void
fun
prerr_lexerr(lexerr): void
fun
fprint_lexerr : fprint_type(lexerr)
//
overload print with print_lexerr
overload prerr with prerr_lexerr
overload fprint with fprint_lexerr
//
(* ****** ****** *)
//
fun
print_lxenode(lxenode): void
fun
prerr_lxenode(lxenode): void
fun
fprint_lxenode : fprint_type(lxenode)
//
fun{}
fprint_lxenode_ : fprint_type(lxenode)
//
overload print with print_lxenode
overload prerr with prerr_lxenode
overload fprint with fprint_lxenode
//
(* ****** ****** *)

(* end of [lexing.sats] *)
