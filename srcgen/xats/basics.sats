(* ****** ****** *)

(*
##xatsopt_header()
*)

(* ****** ****** *)

(*
##xatsopt_set_filename("basics.sats")
*)

(* ****** ****** *)
//
#define
XATS_MAJOR_VERSION 0
#define
XATS_MINOR_VERSION 0
#define
XATS_MICRO_VERSION 0
//
macdef
XATS_fVER(MAJOR, MINOR, MICRO) =
  (1000 * (1000 * ,(MAJOR) + ,(MINOR)) + ,(MICRO))
//
macdef
XATS_VERSION() =
  XATS_fVER(XATS_MAJOR_VERSION, XATS_MINOR_VERSION, XATS_MICRO_VERSION)
//
(* ****** ****** *)

(* end of [basics.sats] *)