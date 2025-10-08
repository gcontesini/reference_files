# Calculator

5+5

# Hello World

"Hello World"

# =============================================================== Var Assignment

a <- 1L
c <- b <- a

class(a)

mode(a)

typeof(a)

## Legal

myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

## illegal

# 2myvar <- "John"
# my-var <- "John"
# my var <- "John"
# _my_var <- "John"
# my_v@ar <- "John"
# TRUE <- "John"

# ==================================================================== Var Types

# numeric - (10.5, 55, 787)
# integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
# complex - (9 + 3i, where "i" is the imaginary part)
# character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
# logical (a.k.a. boolean) - (TRUE or FALSE)
## Returns the type of var a
# class( a )

a <- 10.5
a <- 1L
a <- 9+3i
a <- "Hello World"
a <- TRUE

a <- 1L
a <- as.numeric(a)
a <- as.complex(a)
a <- as.integer(a)

# ========================================================================= Math

# Addition

10+5

# Subtraction

10-5

# Multiplication

10*5

# Division

10/5

# Exponent

10^5

# Modulus

10%%5

# Integer Division

10%/%5

# Non linear operations

max(5, 10, 15)
min(5, 10, 15)
sqrt(2)
abs(-53.1)
ceiling(1.4)
floor(1.4)

# ======================================================================== Print

a <- "Hello World"
print("Hello World")

text <- "Bad!"
print( paste("R is", text) )

a <- paste("R is", text)

print( a )
cat( a )

a <- as.character( a )

a

class(a)

class(a) == class(character())

typeof(a) == typeof(10)

b <- paste("value of a: \"", a,"\" units")
b

# \\	Backslash
# \n	New Line
# \r	Carriage Return
# \t	Tab
# \b	Backspace

# ============================================================ Logical Operators

# Greater than or equal to

10 >= 9    

# Greater than

10 > 9

# Equal

10 == 9

# Not equal

10 != 9

# Less than

10 < 9

# Less than or equal to
10 <= 9

# Logical NOT - returns FALSE if statement is TRUE

!TRUE

# Element-wise Logical AND operator. It returns TRUE if both elements are TRUE

TRUE && TRUE

# Logical OR operator. It returns TRUE if one of the statement is TRUE.
  
TRUE || FALSE

# ================================================================= IF Condition

a <- 200
b <- 33

if ( a > b) {
  print ("a is greater than b")
} else if (a < b) {
  print("a is smaller than b"  )
} else {
  print("b is equal to a")
}

# ======================================================================= Arrays

a <- 1:10
b <- 10:1
a <- seq(1,20,2) # Always start at step 2
a <- seq(30,5, -5) # Always start at 10
a <- seq(10,20) # Always start at 10

class(a)

# Operators

## length 

length(1:10)

## Find out if an element belongs to a vector

2 %in% a
  
## Matrix Multiplication  
a <- 1:10
b <- 10:1
a %*% b 

a %*% t(b)

# Vectors
fruits <- c("apple", "banana", "caju", "damascus")

class(fruits)

numbers <- c(1,2,3)

typeof(numbers)

# Operations

## Length

length(numbers)

## Sorting

sort( fruits )

sort( fruits, decreasing = TRUE )

## Manipulation

fruits[1] # First elemet
fruits[-1] # not the first element
tail(fruits,n=1) # last element
tail(fruits,n=2) # last two element

fruits[3] <- "cannalope"

fruits

fruits[3] <- "caju"

## Repeat the elements

repeat_each <- rep(c(1,2,3), each = 3)

repeat_each

## Repeat the whole vector

repeat_times <- rep(c(1,2,3), times = 3)

repeat_times

# ========================================================================= List

fruits_list <- list("apple", "banana", "cherry")

fruits_list

class( fruits_list )

"apple" %in% fruits_list

## Append
append(fruits_list, "damascus") # Changes are not permanent

fruits_list <- append(fruits_list, "damascus")

fruits_list

fruits_list <- append(fruits_list, "orange", after = 0)

fruits_list

fruits_list <- c(fruits_list , list("peach","pear"))

fruits_list
# ======================================================================= Matrix

natural <- matrix(c(1:9), nrow = 3, ncol = 3)

natural

natural <- t( matrix(c(1:9), nrow = 3, ncol = 3) )

natural

natural[1,2]

natural[3,]

natural[,1]

natural <- cbind( natural, c(10,11,12) )

natural <- rbind( natural, c(13:16))

natural

## Remove row or/and col

natural <- natural[-c(1), -c(3)]

natural

## Dimensions

dim(natural)

nrow(natural)

ncol(natural)

## Length

length(natural)

## Loop over

natural <- t( matrix(c(1:9), nrow = 3, ncol = 3) )

for (rows in 1:nrow(natural)) {
  for (columns in 1:ncol(natural)) {
    print(natural[rows, columns])
  }
}

## Combine two matrices

natural_1 <- t( matrix(c(1:9), nrow = 3, ncol = 3) )
natural_2 <- t( matrix(c(9:17), nrow = 3, ncol = 3) )

## To bellow

matrix_combined <- rbind(natural_1, natural_2)

## To the right

matrix_combined <- cbind(natural_1, natural_2)

# ======================================================================= Tensor

thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

multiarray[2, 3, 2]

# ==================================================================== Dataframe

stats_df <- data.frame (
  Attribute = c("Strength", "Stamina", "Intelligence", "Agility"),
  Value = c(100, 150, 120, 80),
  Bonus = c(51,22,38,47)
)

## Show columns names

names( stats_df )

## Access col

stats_df[1]

stats_df[["Attribute"]]

stats_df$Attribute

## Append row

stats_df <- rbind(stats_df, c("Speech", 75, 25))

## Append col

stats_df <- cbind(stats_df, "Debuff"= c( -15, -35, -18, -10))

## Remove row or col

stats_df <- stats_df[,-c(4)]

## Dimensions

dim( stats_df )

ncol( stats_df )

nrow( stats_df )

stats_df2 <- data.frame (
  Attribute = c("Strength", "Stamina", "Intelligence", "Agility"),
  Value = c(0, 80, 42, 65),
  Bonus = c(70,63,87,21)
)

new_stats_df <- cbind( stats_df, stats_df2 )

new_stats_df

new_stats_df <- rbind( stats_df, stats_df2 )

new_stats_df

# ======================================================================= Factor

music_genre <- factor(
  c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz")
)

levels( music_genre )

music_genre <- factor(
  c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz", "Blues"),
  levels = c("Classic", "Jazz", "Pop", "Rock", "Other")
)

levels( music_genre )

# ===================================================================== For loop

for (x in 1:10){
  print(x)
}

a <- TRUE
while( a ) {
  print(a)
  a<-FALSE
}

print(a)

a <- list( "Apple", "Banana", "Caju" )
for (i in a) {
  print( i )
}

# ==================================================================== Functions

# create a function with the name my_function

welcome <- function( arg_="to you" ) { 
  print( paste("Hello",arg_) )
}

welcome()

welcome("Bob")

# Return

my_sum <- function( arg_1_, arg_2_ ) {
  return( arg_1_ + arg_2_ )
}

my_sum(1,2)

# Recursion

tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)

# ========================================================================= Plot

plot(1,3)

plot( c(1,8), c(3,10))

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

x <- c(1:5)
y <- c(3, 7, 8, 9, 12)

plot(x, y)


plot(
  x,                       # x data
  y,                       # y data
  main="My Graph",         # title
  xlab="The x-axis",       # x label
  ylab="The y axis",       # y label
  type="b",                # line, points "p" for points,
  pch=11,                  # type of point
  cex=2,                   # symbol size
  lwd=3,                   # line width
  bg="red",                # bg color
  col="blue"               # color
)

dev.off()

# plot types
# "l" for lines,
# "b" for both,
# "c" for the lines part alone of "b",
# "o" for both ‘overplotted’,
# "h" for ‘histogram’ like (or ‘high-density’) vertical lines,
# "s" for stair steps,
# "S" for other steps, see ‘Details’ below,
# "n" for no plotting.

# point type (pch)
# 1 to 25

# Available parameter values for lty:
# 0 removes the line
# 1 displays a solid line
# 2 displays a dashed line
# 3 displays a dotted line
# 4 displays a "dot dashed" line
# 5 displays a "long dashed" line
# 6 displays a "two dashed" line

# axes = FALSE
# yaxt = "n"
# xaxt = "n"

# tick.ratio = 0.5
# tck = 0.02

# labels = 1:9 # Label for the axis

# Rotate axis labels
# las = 0
# las = 1
# las = 2
# las = 3

# Log-scale
# log = "xy"

# ========================================================================= Plot








