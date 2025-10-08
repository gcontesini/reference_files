~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  R
help.start( )				- Start the html full doc.
?<function>				- Returns doc about <function>. or help()
example( <function> ) 		- Returns an example of the function.
?regex					- Help with regex.
---------------------------------------------------------------------------------------------------- Objects
foo_boo <- TRUE 			- Logical.
cow_int <- 2L   				- Integer.
bar_num <- 10.0 			- Numeric.
foo_cplx <- 3+2i 			- Complex.
cow_raw <- "Hello"			- String.
foo_vec <- c(1,5,7)			- Vector.
bar_list <- list('a',1)			- List.
cow_mt <- matrix(			- Matrices.
	c(), nrow=2, ncol=3 )	
foo_array <- array(			- Array.
	c(1:2), dim=c(4,2,3) ) 
bar_fct <- factor( c(1,3,2,3) )	- Factor, store elem vec with counts.
cow_df <- data.frame(		- Data frame, organized matrix.
	uid=c(12, 29,15), 
	weight=c(81,93,78),
	age=c(42,38,26) )
Var Handeling:
	class( cow )			- Print obj type.
	str( cow )				- Print obj structures.
	summary( cow )			- Show everything, EVERYTHING !
	cow$uid or cow[[2]]		- Print df->uid sub set .
	ls() or objects()	 		- Show all variables.
	rm( list=ls( ) )			- Delete all variables. 
	gc()					- Calls garbage collector.
------------------------------------------------------------------------------------------------ Operators
All purpose Op:				- Works with all obj types.
	+ 		- Add.			- 		- Sub.
	* 		- Mult.			/ 		- Div (float).
	%% 		- Remainder.		%/%	 	- Div (int).
	** 		- Exp.			!		- NOT, Op values.
	&		- Bitwise AND.		| 		- bitwise OR.
	%in% 	- Value Match.		: 		- Seq creator.
	%*% 	- Matrix Mult.		%x%		- Kronecker products
Logical Op:
	&&		- Logical and.		|| 		- Logical or.
	>		- Bigger.			<		- Smaller.
	==		- Equal.			<=		- Smaller or Eq.
	>=		- Bigger or Eq.		!=		- Not Eq.
-------------------- Conditional ----------------------------- Loop ------------------------ Function
 if ( condition) {		     while ( condition ) {	   name <- function(
...	code_a		     ...    code_a			   ...	arg_1,\
} else if( condition) {	     }					   ...	arg_2=default ) {	
...	code_b		     					   ...		code_a
} else {			     for ( vector ) {		   }
...	code_c		     ...    code_a			   
}				     }
	- R has optimize switch conditional.
-------------------------------------------------------------------------------------- Build-in Functions
String:
	paste( ..., sep="" )
	strsplit( x, split )
	names( foo_vec ) <- c("Age","Taxes")
	substr( x, start=n1, stop=n2 )
	grep( pattern, x , ignore.case=FALSE, fixed=FALSE )
	sub( pattern, repl, x, ignore.case =FALSE, fixed=FALSE )
	format( x, digits, nsmall, scientific, width, justify )
Vector:
	foo <- seq(5, 9, by = 0.4)	- Creates a num vec, or 5:9
	bar <- c('Mon','Tue')		- Creates a misc elem.
	rep(x, ntimes)			- Rep x n times.
	cut(x, n)				- Cut vec at index=n.
	sort( foo )				- Sort vec.
Math:
	abs(x) 	sqrt(x)	ceiling(x)	floor(x)	trunc(x)	exp(x)
	cos(x)	acos(x) 	cosh(x)	acosh(x)	tan(x)	atanh()
	sin(x)	asin(x)	sinh(x)	asinh(x)	atan(x)	tanh(x)
	log(x)	log10(x)	signif(x, digits=n)	round(x, digits=n)
Matrix
	dim( a_vec ) <- c(2,4)		- Converts a_vec to a matrix.
	persp( a_mtx )			- 3D plot of matrix.
	image( a_mtx )			- Create a heatmap.
     -~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Statistics
mean( a_vec )				- Mean of a_vec values.
median( a_vec )				- Median value of a_vec.
sd( a_vec )				- Standard deviation.
factor( a_vec )				- Make sense of a_vec.
as.interger( a_factor)			- Show factors as int no summarize..
levels( a_factor )			- Show all factor as inter
cor.test( a_df )				- Correlation Test.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Data Manipulation
colnames( a_df ) <- c("cow")	- Give a_df cols names.
rownames( a_df ) <-("foo")		- Give a_df rows names.
merge( a_df, b_df )			- Merge two data frames.
-~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ In-Output
print("Hello Wolrd",a_df)	- Print msg, or cat("str") [ do not use write() ]
list.files()				- List all .R files in dir.
file.show( 'cow' )			- Show contents of cow.
source("foo.R")				- Load foo.R code.
read.table("cow")			- Load data from cow. [ read.delim( ), read.csv() ]
write.table( "cow" )		- Write a obj in table format.
save( obj )					- Saves Rs obj outside R env.
sink( "cow" )				- Save all subseq R output to a file, sink() to end.
dev.off()					- Flush and close the output file.

-~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Graphics
----------------------------------------------------------------------------------------------------------------------- Plot
plot( y_vec, x_vec, )			- Create a simple plot.
persp( a_mtx )				- 3D plot of matrix.
image( a_mtx )				- Create a heatmap.
abline()					- Adds straight lines through the current plot.
legend()					- Create a legend to the plot.
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Regression
lm( y_vec ~ x_vec )			- Linear.
predict( lm(), new_data )		- Simulate new data using lm().
nls( y_vec ~ b1*x_vec^2+b2 )	- Non-linear functions.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Reserved Words
if 		else 		repeat 	while 	function	NA_integer_ 	...
for 		next 		break 	TRUE	NA_real_ 	NA_character_ 	NA
in 		FALSE 	NULL 	Inf 		NaN 		NA_complex_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  System
system( cmd )				- Exec system [ GNU/Linux ] cmd.
dir() 						- Reads content of current working directory.
getwd() 					- Returns current working directory.
setwd( "/home/cow" ) 		- Changes current working directory.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Flags
R [ Flag ]:
	--slave				- Makes R run as quietly.

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ LIBRARIES
install.pa­ckages( "cow" ) 
library( )					- Show all available libs.
library( "cow" )				- Load lib cow.
libraryr(help= "cow" )			- Return cows doc.
search()					- Show loaded libs.
---------- GGPLOT2
qplot( )
---------- RSQLite
---------- RMYSQL
---------- XLSX
---------- FOREIGN
---------- DPLYR
---------- data.table
---------- XML
---------- RColorBrewer
---------- HMISC
---------- READXL
---------- READR
---------- ggvis
---------- lattice
---------- stringr
---------- HTMLWIDGETS
.......... LEAFTLET
.......... DIAGRAMMER 
---------- GGMAP
---------- MAPTOOLS
---------- PARALLEL
---------- RCPP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CLEAN CODE
	- Use <- as assigment operator.
	- Dont start var names w/ . ,they are hiden var.


					Who are you who are so wise in the ways of science?
											- Contesini [Apr/2016]