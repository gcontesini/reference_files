# clear all env. variables
rm(list = ls()) 

# extract the names of each columns from the dataset
names() 

# show all available data sets
data() 

# Clear the current plot
dev.off()

# Clear the all plots
graphics.off()

# pass murders as input to the following functions
murders %>% 
  ggplot(aes(population, total, label=abb, color=region)) +
  geom_label()