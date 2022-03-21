#' ---
#' title: "Rendered R script"
#' author: "Miguel Ayala"
#' date: "21/03/2022"
#' output: github_document
#' ---

#+ r setup, include=FALSE 
knitr::opts_chunk$set(echo = TRUE)
#

##' R Markdown

#' This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

#' When you click the Knit button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

#+ r packages
library(tidyverse)
library(cowplot)
#'

##' Including Plots

#' You can also embed plots, for example:

#+ r pressure, echo=FALSE
econ <- economics 

econ %>% 
  ggplot(aes(x = date, y = unemploy)) +
  geom_line() + 
  ylab('') +
  ggtitle('Unemployment in the USA',
          subtitle = 'number of unemployed in thousands') +
  cowplot::theme_cowplot()
#'

#' Note that the echo = FALSE parameter was added to the code chunk to prevent printing of the R code that generated the plot.
