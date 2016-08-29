/* ****** ****** */

/*
##xatsopt_header()
*/

/* ****** ****** */

/*
##xatsopt_set_filename("location.cats")
*/

/* ****** ****** */

#\
ifndef \
XATSOPT_LOCATION_CATS
//
/* ****** ****** */
//
typedef
struct{
//
atstype_int nrow ; // line number
atstype_int ncol ; // line offset
//
atstype_lint nchar ; // char number
/*
atstype_lint nutf8 ; // utf-8 number
*/
//
} xatsopt_position_t ;
//
/* ****** ****** */
//
#define \
xatspot_position_get_nrow(pos) (((xatsopt_position_t*)pos)->nrow)
#define \
xatspot_position_set_nrow(pos, x) (((xatsopt_position_t*)pos)->nrow=x)
//
#define \
xatspot_position_get_ncol(pos) (((xatsopt_position_t*)pos)->ncol)
#define \
xatspot_position_set_ncol(pos, x) (((xatsopt_position_t*)pos)->ncol=x)
//
#define \
xatspot_position_get_nchar(pos) (((xatsopt_position_t*)pos)->nchar)
#define \
xatspot_position_set_nchar(pos, x) (((xatsopt_position_t*)pos)->nchar=x)
/*
#define \
xatspot_position_get_nutf8(pos) (((xatsopt_position_t*)pos)->nutf8)
#define \
xatspot_position_set_nutf8(pos, x) (((xatsopt_position_t*)pos)->nutf8=x)
*/
//
/* ****** ****** */

#endif // end of [ifndef XATSOPT_LOCATION_CATS]

/* ****** ****** */

/* end of [location.cats] */
