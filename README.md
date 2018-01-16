# chartisan
Produce chartist.js charts from R.

*development of chartisan is on hold as I turn my visualization attention to
golly*

## my thoughts

1. I am aware there are a couple chartist.js R projects out there. The projects
   in question do not meet certain criteria for me.
1. This project is intended for use with [dull](https://github.com/nteetor/dull)
   and needs to end up on CRAN. (neither of the previous chartist R projects are
   on CRAN at the time I wrote this).
1. I hope to mimic much of what was built into
   [ggvis](https://github.com/rstudio/ggvis).
1. Finally, the accessibility plugin for Chartist has me intrigued. Recently I
   have had to develop 508 applications and would love to create a way to build
   compliant visulizations from R.

## your concerns?

Right now there's a lot of room for anything, so let me know your thoughts or
feelings in a [issue](https://github.com/nteetor/chartisan/issues/new).

## installation

Currently, chartisan is only available for installation from GitHub. In the 
future chartisan may be submitted to CRAN (think waaaay in the future).

```R
devtools::install_github("nteetor/chartisan")
```

## examples

The following example generates a simple chart, displayed in a shiny
application.

```R
library(chartisan)

my_chart <- iris %>%
 chartist(Sepal.Length, Sepal.Width) %>%
 layer_line() %>%
 layer_ratio_5_8()
 
my_chart
```

![A simple chart](/inst/readme-example-chart.png)
