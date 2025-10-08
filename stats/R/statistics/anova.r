# I want to know if the mean value of the distibrutions of Petal.Length across
# all iris species in iris dataset are significantly different from one-another.
# Assuming that the variance of the Petal.Length distributions of each 
# distribution by species is rughtly the equal.

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

anova_results <- aov(Sepal.Length~Species, data = iris_df)

print(anova_results)