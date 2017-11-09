#' Chart options
#'
#' Update charts options. Currently only used to assign an HTML id to the chart.
#'
#' @param id A character string specifying the id of the chart.
#'
#' @export
add_options <- function(chart, id = NULL) {
  if (!is.null(id)) {
    chart$id <- id
  }

  # chart$options$width <- width %||% chart$options$width
  # chart$options$height <- height %||% chart$options$height
  # chart$options$low <- low %||% chart$options$low
  # chart$options$high <- high %||% chart$options$high
  # chart$options$chartPadding <- padding %||% chart$options$chartPadding

  invisible(chart)
}

padding <- function(top = 15, right = 15, bottom = 5, left = 10) {
  list(
    top = top,
    right = right,
    bottom = bottom,
    left = left
  )
}
