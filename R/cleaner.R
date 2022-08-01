# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

trim_all_ws <- function(dframe) {
  names <- names(dframe[sapply(dframe, is.character)])
  cols_to_trim <- names(dframe)
  dframe[cols_to_trim] <- lapply(dframe[cols_to_trim], trimws)
  return(dframe)}
