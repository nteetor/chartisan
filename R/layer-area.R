#' An area chart
#'
#' Create an area chart.
#'
#' @param chart A `chartist` object.
#'
#' @export
#' @examples
#' areas <- faithful %>%
#'   chartist(waiting, eruptions) %>%
#'   layer_area() %>%
#'   layer_ratio_2_5() %>%
#'   add_x_axis(grid = TRUE) %>%
#'   add_y_axis(integers = TRUE)
#'
#' areas
#'
layer_area <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting object of class `chartist`",
      call. = FALSE
    )
  }

  chart$type <- "Line"

  chart$options$showLine <- FALSE
  chart$options$showPoint <- FALSE
  chart$options$showArea <- TRUE

  chart$options$axisX <- list(
    type = ~ Chartist.AutoScaleAxis,
    onlyInteger = TRUE
  )

  chart$options$lineSmooth <- FALSE

  chart$options$showGridBackground <- TRUE
  chart$options$fullWidth <- FALSE

  invisible(chart)
}
