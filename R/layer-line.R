#' A line chart
#'
#' Add a line layer to a chart.
#'
#' @param chart A `chartist` object.
#'
#' @param smooth One of `TRUE` or `FALSE`, specifying if the line should be
#'   smoothed, defaults to `FALSE`.
#'
#' @export
layer_line <- function(chart, smooth = FALSE) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting object of class `chartist`",
      call. = FALSE
    )
  }

  chart$type <- "Line"

  chart$options$showLine <- TRUE
  chart$options$showPoint <- FALSE
  chart$options$showArea <- FALSE

  # chartist by default wants to smooth lines, however not smoothing the lines
  # is consistent with ggplot2
  if (!smooth) {
    chart$options$lineSmooth <- FALSE
  }

  chart$options$axisX <- list(
    type = ~ Chartist.AutoScaleAxis,
    onlyInteger = TRUE
  )

  chart$options$axisY <- list(
    onlyInteger = TRUE
  )

  invisible(chart)
}
