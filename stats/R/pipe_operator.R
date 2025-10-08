The tidyverse ecosystem includes several pipe operators, each with its own specific use case:

1. The main pipe operator (%>%): This is the most commonly used pipe operator in tidyverse. It passes the result of the left-hand side as the first argument to the function on the right-hand side[1][2].

2. The tee pipe operator (%T>%): This operator works similarly to %>%, but it returns the left-hand side value instead of the function result. It's useful for functions with side effects like plotting or printing[1][2].

3. The exposition pipe operator (%$%): This pipe exposes the names (columns) from the left-hand side object to the right-hand side expression. It's helpful when working with functions that don't have a built-in data argument[1][2].

4. The assignment pipe operator (%<>%): This pipe assigns the result of the right-hand side operations back to the left-hand side object. It's typically used at the beginning of a pipe chain[1][2].

These pipe operators are part of the magrittr package, which is included in the tidyverse. They are designed to improve code readability and streamline data manipulation tasks[1][2][5].

Citations:
[1] https://towardsdatascience.com/3-lesser-known-pipe-operators-in-tidyverse-111d3411803a?gi=5a8d85bd4c67
[2] https://www.r-bloggers.com/2021/09/the-four-pipes-of-magrittr/
[3] https://www.datacamp.com/tutorial/pipe-r-tutorial
[4] https://stackoverflow.com/questions/74558008/is-there-a-good-tidyverse-equivalent-of-for-subsetting-within-a-pipe
[5] https://wrangle-r.rsquaredacademy.com/r-pipe-magrittr
[6] https://r4ds.had.co.nz/pipes.html
[7] https://style.tidyverse.org/pipes.html
[8] https://www.tidyverse.org/blog/2023/04/base-vs-magrittr-pipe/
