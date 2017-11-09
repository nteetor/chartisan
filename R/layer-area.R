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
#'   add_x_axis(grid = FALSE)
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

  invisible(chart)
}
