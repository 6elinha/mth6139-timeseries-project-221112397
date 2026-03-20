dfbanana <- read.csv("data/3ybananabread.csv" , header = TRUE, sep=",")
dflemon <- read.csv("data/3ylemondrizzle.csv" , header = TRUE, sep=",")
dfginger <- read.csv("data/3ygingerbread.csv" , header = TRUE, sep=",")
dftiramisu <- read.csv("data/3ytiramisu.csv" ,  header = TRUE, sep=",")

dfprotein <- read.csv("data/3yprotein.csv" , header = TRUE, sep=",")
dfvegan <- read.csv("data/3yvegan.csv" , header = TRUE, sep=",")

summary(dfbanana)
head(dfbanana)
colnames(dfbanana) <- c("ds" , "y")
dfbanana$ds <- as.Date(dfbanana$ds)
dfbanana$y <- as.numeric(dfbanana$y)
plot(dfbanana$ds, dfbanana$y, type = "l",
     main = "Banana Bread Search Interest",
     xlab = "Date", ylab = "Search Interest")

colnames(dflemon) <- c("ds", "y")
dflemon$ds <- as.Date(dflemon$ds)
dflemon$y <- as.numeric(dflemon$y)

plot(dflemon$ds, dflemon$y, type = "l",
     main = "Lemon Drizzle Search Interest",
     xlab = "Date", ylab = "Search Interest")

colnames(dfginger) <- c("ds", "y")
dfginger$ds <- as.Date(dfginger$ds)
dfginger$y <- as.numeric(dfginger$y)

plot(dfginger$ds, dfginger$y, type = "l",
     main = "Gingerbread Search Interest",
     xlab = "Date", ylab = "Search Interest")

colnames(dftiramisu) <- c("ds", "y")
dftiramisu$ds <- as.Date(dftiramisu$ds)
dftiramisu$y <- as.numeric(dftiramisu$y)

plot(dftiramisu$ds, dftiramisu$y, type = "l",
     main = "Tiramisu Search Interest",
     xlab = "Date", ylab = "Search Interest")

colnames(dfprotein) <- c("ds", "y")
dfprotein$ds <- as.Date(dfprotein$ds)
dfprotein$y <- as.numeric(dfprotein$y)

plot(dfprotein$ds, dfprotein$y, type = "l",
     main = "Protein Search Interest",
     xlab = "Date", ylab = "Search Interest")

colnames(dfvegan) <- c("ds", "y")
dfvegan$ds <- as.Date(dfvegan$ds)
dfvegan$y <- as.numeric(dfvegan$y)

plot(dfvegan$ds, dfvegan$y, type = "l",
     main = "Vegan Search Interest",
     xlab = "Date", ylab = "Search Interest")


install.packages("prophet")
library(prophet)

banana_model <- prophet(dfbanana)

banana_future <- make_future_dataframe(banana_model, periods = 365)

banana_forecast <- predict(banana_model, banana_future)

plot(banana_model, banana_forecast)
#' ---
#' title: Time Series Week NNN
#' author: You
#' date: Today
#' ---

# 1. R Scratchpad ------------------------------------------------------------
#   You will only write in R Markdown for code and results
#   that are more or less finalised.
#   In the meantime, you can use this R scratchpad.
#   Delete all this text and write your own code
#   Don't forget to add explanatory comments
#   And to separate out different bits with headings or
#   subheadings

# 2. Use Sectioning ----------------------------------------------------------
#   Comment lines start with #, they are not read by R
#   If you end comment lines with space and four minus signs -
#   they will be interpreted as section headings.
#   You can add more - to visually separate sections.
#   CTRL+SHIFT+R / ⌘+SHIFT+R creates a new section and adds the hyphens.
#
#   These sections are accessible in
#     - the drop-down list on the bottom left of the scripting area,
#       ALT+SHIFT+J / ⌘+SHIFT+J brings it up
#   and
#     - the outline section on the top-right corner of the scripting area
#       CTRL+SHIFT+O / ⌘+SHIFT+O brings it up

## 2.1 Subsection -----------------------------------
#   You can also have subsections
#   RStudio does not treat them differently from sections
#   but if you add a extra #, number or spaces they will look
#   different in the outline section.
#   This makes it easier to navigate your R file
#   I use less hyphens for subsections to help visually

### 2.1.1 Subsection -------------------
#   And sub-subsections,...

# 3. Folding sections -----------------------------------------------------
#   You can fold sections by clicking on the little grey down-arrow on the left
#   of the section heading. Or hitting ALT+L/⌘+ALT+L
#   This is useful to hide sections you are not working on
#   SHIFT+ALT+L / ⌘+SHIFT+⌥+L unfolds the section
#   ALT+O / ⌘+⌥+O folds all sections
#   SHIFT+ALT+O / ⌘+SHIFT+⌥+O unfolds all sections

# 4. Etiquette ------------------------------------------------------------
#   It is a good idea (valued in any business environment) to have a certain
#   etiquette when writing code (or anything else really).
#   For instance, I write a blank line before a section heading and not after
#   You can choose your own style, but be consistent, and have the least
#   amount of random variations in your style as possible.

