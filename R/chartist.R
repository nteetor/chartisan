#' Build a chartist chart
#'
#' Start building a chart.
#'
#' @param data A data frame, defaults to `NULL`.
#'
#' @param x The column
#'
#' @export
#' @examples
#' lines <- iris %>%
#'   chartist(Sepal.Length, Sepal.Width) %>%
#'   layer_line() %>%
#'   layer_ratio_5_8()
#'
#' lines
#'
#' points <- iris %>%
#'   chartist(Sepal.Length, Sepal.Width) %>%
#'   layer_point() %>%
#'   layer_ratio_5_8()
#'
#' points
#'
chartist <- function(data, x, y) {
  x <- enquo(x)
  y <- enquo(y)

  structure(
    list(
      data = sprintf("[%s]", enjson(data, x, y)),
      x = x,
      y = y,
      id = NULL,
      type = NULL,
      ratio = NULL,
      options = list(
        chartPadding = list(
          top = 0,
          right = 0,
          bottom = 40,
          left = 20
        ),
        plugins = list(
          accessibility = list(),
          title = list(
            axisX = list(
              axisTitle = as.character(x[[2]]),
              offset = list(
                x = 0,
                y = 40
              )
            ),
            axisY = list(
              axisTitle = as.character(y[[2]]),
              flipTitle = TRUE,
              offset = list(
                x = 0,
                y = 20
              )
            )
          )
        )
      )
    ),
    class = "chartist"
  )
}

is.chartist <- function(x) {
  inherits(x, "chartist")
}
