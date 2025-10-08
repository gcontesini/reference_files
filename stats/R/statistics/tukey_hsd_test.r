# I want to know if the mean value of the distibrutions of Petal.Length across
# all iris species in iris dataset are significantly different from one-another,
# by applying pair wise t-test.
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

anova_results <- aov(Sepal.Length~Species, data = iris_df)

tukey_hsd_results <- TukeyHSD(anova_results)

print(anova_results)