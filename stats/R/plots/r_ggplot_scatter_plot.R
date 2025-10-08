library(ggplot2)

# Turn off scientific notation like 1e+06
options(scipen=999)  

# Load the data
data( "midwest", package = "ggplot2" )  

# Scatter plot
ggplot(midwest, aes(x=area, y=poptotal))
ggplot(midwest, aes(x=area, y=poptotal)) + geom_point()

# Regression
g <- ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point() +
  geom_smooth(
    method="lm",
    # lm - linear model
    # glm
    # rlm - Robust Fitting of Linear Models
    # loess() - Local Polynomial Regression Fitting
    formula=NULL,
    # y ~ log(x)
    # y ~ poly(x, 2)
    show.legend = TRUE,
    # SD Error: confidence bands
    se=FALSE        
  ) 

# Set x & y range
g +
  xlim(c(0, 0.1)) +
  ylim(c(0, 1000000)) 

# 
g_aux <- g +
  coord_cartesian(
    xlim=c(0,0.1),
    ylim=c(0, 1000000)
  )

plot(g_aux)

# Add Title and Labels
g_aux +
  labs(
    title="Area Vs Population",
    subtitle="From midwest dataset",
    y="Population",
    x="Area",
    caption="Midwest Demographics"
  )

plot(g_aux)

# Color
gg <- ggplot(midwest, aes(x=area, y=poptotal)) +
  coord_cartesian(
    xlim=c(0,0.1),
    ylim=c(0, 1000000)
  ) +
  geom_point(
    aes(color=state),
    size=1,
    shape=3
  ) +
  geom_smooth(
    method="lm",
    col="black",
    size=0.25,
    linetype="dashed",
    se=FALSE
  ) +
  labs(
    title="Area Vs Population",
    subtitle="From midwest dataset",
    y="Population",
    x="Area",
    caption="Midwest Demographics"
  )

plot(gg)

# Adjust 

gg <- ggplot(
    midwest,
    aes(x=area, y=poptotal)
  ) + 
  geom_point(
    aes(col=state),
    size=1,
    shape=3
  ) +
  geom_smooth(
    method="lm",
    col="firebrick",
    size=0.5
  ) + 
  coord_cartesian(
    xlim=c(0, 0.1),
    ylim=c(0, 1000000)
  ) + 
  labs(
    title="Area Vs Population",
    subtitle="From midwest dataset",
    y="Population",
    x="Area",
    caption="Midwest Demographics"
  )

plot(gg)

gg + 
  scale_x_continuous(
    breaks=seq(0, 0.1, 0.01)
  )

gg + 
  scale_x_continuous(
    breaks=seq(0, 0.1, 0.01),
    labels = letters[1:11]
  ) +
  scale_y_continuous(
    breaks=seq(0, 1000000, 200000),
    labels = function(x){paste0(x/1000, 'K')}
  )

# Themes
gg + theme_bw()

gg + theme_classic()


