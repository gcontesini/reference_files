# Import dataset
data_cars <- mtcars

# Help
?mtcars

head( data_cars )

# dimension row x col
dim( data_cars )

# col names
col_names <- names( data_cars )

# row names
rownames( data_cars )

# print col
data_cars["cyl"]

data_cars[,c(1,2,3)]

data_cars[,c(1,3,4)]

# Summary
summary_stats <- summary( data_cars )

horse_power <- data_cars["hp"]

# Which functions
max( horse_power )
index_max <- which.max( data_cars["hp"]$hp )
rownames(data_cars)[ index_max ]

min( horse_power )
index_min <- which.min( data_cars["hp"]$hp )
rownames( data_cars )[ index_min ]

# Mean, Medium, Mode
mean( data_cars["hp"]$hp )

median( data_cars["hp"]$hp )

  # R don't have an intrinsic mode function
Mode( data_cars["hp"]$hp )

# Percentiles
quantile( data_cars["hp"]$hp, c(1.00) ) # Max quantile
quantile( data_cars["hp"]$hp, c(0.75) ) # Upper quantile
quantile( data_cars["hp"]$hp, c(0.5) )  # Medium quantile
quantile( data_cars["hp"]$hp, c(0.25) ) # Lower quantile
quantile( data_cars["hp"]$hp, c(0.00) ) # Min quantile

