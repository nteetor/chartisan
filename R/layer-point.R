#' A point chart
#'
#' Add a point layer to a chart.
#'
#' @param chart A `chartist` object.
#'
#' @export
layer_point <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting object of class `chartist`",
      call. = FALSE
    )
  }

  chart$type <- "Line"

  chart$options$showLine <- FALSE
  chart$options$showPoint <- TRUE
  chart$options$showArea <- FALSE

  chart$options$axisX <- list(
    type = ~ Chartist.AutoScaleAxis,
    onlyInteger = TRUE
  )

  chart$options$axisY <- list(
    onlyInteger = TRUE
  )

  invisible(chart)
}
