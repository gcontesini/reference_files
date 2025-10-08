
iris_df <- data.frame( iris )

categories_species <-  levels(iris_df$Species)
column_names <- col(iris_df)

n_rows <- dim( iris_df )[1]
n_cols <- dim( iris_df )[2]

setosa_subset <- which( iris_df$Species == "setosa" )

mean_setosa_petal_length <- mean( iris_df$Petal.Length[setosa_subset] )
sd_setosa_petal_length <- sd( iris_df$Petal.Length[setosa_subset] )

hist(
    iris_df$Petal.Length[setosa_subset],
    prob=TRUE,
    right=FALSE
)

x_domain<-seq( 1,2,length=1e4)


lines(
    x_domain,
    dnorm(
        x_domain,
        mean_setosa_petal_length,
        sd_setosa_petal_length
    ),
    type="l",
    col="red"
)