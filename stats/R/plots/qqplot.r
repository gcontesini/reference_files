exp_freq <- rnorm(1e2, 5.23, 1.56)
theory_pdf <- rnorm(1e5, 5.0, 1.5)
qqplot_info <- qqplot( exp_freq, theory_pdf )

qqplot_fit <- lm( y~x, data=qqplot_info )

abline( qqplot_fit )
