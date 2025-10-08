# I want to know if the standard deviation from the distributions of Petal.Length
# across all iris species in the  iris dataset are significantly different from 
# one-another. So that I can assume that the variance of the Petal.Length 
# distributions of each species is rughtly the equal.

# I want to know if the distibrutions of Petal.Length and Petal.Width from the 
# "setosa" species in iris dataset are significantly different from one-another.

iris_df <- data.frame( iris )

categories_species <-  levels(iris_df$Species)
column_names <- col(iris_df)

n_rows <- dim( iris_df )[1]
n_cols <- dim( iris_df )[2]

setosa_subset <- which( iris_df$Species == "setosa" )
versicolor_subset <- which( iris_df$Species == "versicolor" )
virginica_subset <- which( iris_df$Species == "virginica" )

summary_setosa <- summary( iris_df[setosa_subset, ] )
summary_versicolor <- summary( iris_df[versicolor_subset, ] )
summary_virginica <- summary( iris_df[virginica_subset, ] )

t_test_petal_length_width_result <- var.test(
    iris_df$Petal.Length[setosa_subset],
    iris_df$Petal.Width[setosa_subset]
)

t_test_petal_length_length_result <- var.test(
    iris_df$Petal.Length[setosa_subset],
    iris_df$Petal.Length[setosa_subset]
)

print(t_test_petal_length_width_result)

print(t_test_petal_length_length_result)