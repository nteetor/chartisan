#' Configure a chart's x- and y-axis
#'
#' The x-axis and y-axis options.
#'
#' @param chart A `chartist` chart.
#'
#' @param title A character string specifying the axis title, defaults to `NULL`
#'   in which case the data column name is used as the axis title.
#'
#' @param labels If `TRUE`, labels are shown on the x-axis, defaults to `TRUE`.
#'
#' @param grid If `TRUE`, the x-axis grid lines are shown, defaults to `TRUE`.
#'
#' @param offset A numeric value specifying the offset of the axis labels, the
#'   x-axis offset defaults to `30` and the y-axis offset defaults to `40`.
#'
#' @param position One of `"start"` or `"end"`, the x-axis position defaults
#'   to `"end"` and the y-axis position defaults to `"start"`.
#'
#' @export
add_x_axis <- function(chart, title = NULL, labels = TRUE, grid = TRUE,
                       offset = 30, position = "end") {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting object of class `chartist`",
      call. = FALSE
    )
  }

  if (position != "end" && position != "start") {
    stop(
      'incorrect `position` argument, expecting one of "end" or "start"',
      call. = FALSE
    )
  }

  labels <- as.logical(labels)
  grid <- as.logical(grid)

  chart$options$axisX <- chart$options$axisX %||% list()
  chart$options$axisX$offset <- offset
  chart$options$axisX$position <- position
  chart$options$axisX$showLabel <- labels
  chart$options$axisX$showGrid <- grid

  if (!is.null(title)) {
    chart$options$plugins$title$axisX$axisTitle <- title
  }

  invisible(chart)
}

#' @rdname add_x_axis
#' @export
add_y_axis <- function(chart, title = NULL, labels = TRUE, grid = TRUE,
                       offset = 40, position = "start") {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting object of class `chartist`",
      call. = FALSE
    )
  }

  if (position != "end" && position != "start") {
    stop(
      'incorrect `position` argument, expecting one of "end" or "start"',
      call. = FALSE
    )
  }

  labels <- as.logical(labels)
  grid <- as.logical(grid)

  chart$options$axisY <- chart$options$axisY %||% list()
  chart$options$axisY$offset <- offset
  chart$options$axisY$position <- position
  chart$options$axisY$showLabel <- labels
  chart$options$axisY$showGrid <- grid

  if (!is.null(title)) {
    chart$options$plugins$title$axisY$axisTitle <- title
  }

  invisible(chart)
}
