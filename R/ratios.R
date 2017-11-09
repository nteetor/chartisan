.ratios <- list(
  `1` = "ct-square",
  `15:16` = "ct-minor-second",
  `8:9` = "ct-major-second",
  `5:6` = "ct-minor-third",
  `4:5` = "ct-major-third",
  `3:4` = "ct-perfect-fourth",
  `2:3` = "ct-perfect-fifth",
  `5:8` = "ct-minor-sixth",
  `1:1.618` = "ct-golden-section",
  `3:5` = "ct-major-sixth",
  `9:16` = "ct-minor-seventh",
  `8:15` = "ct-major-seventh",
  `1:2` = "ct-octave",
  `2:5` = "ct-major-tenth",
  `3:8` = "ct-major-eleventh",
  `1:3` = "ct-major-twelfth",
  `1:4` = "ct-double-octave"
)

#' Chart ratios
#'
#' Change the display ratio of a chart. `*_golden` refers to the golden ratio.
#'
#' @param chart A `chartist` object.
#'
#' @name ratios
NULL

#' @rdname ratios
#' @export
layer_ratio_1_1 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["1"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_3_4 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["3:4"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_5_8 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["5:8"]]

  invisible(chart)
}


#' @rdname ratios
#' @export
layer_ratio_15_16 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["15:16"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_8_9 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["8:9"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_5_6 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["5:6"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_4_5 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["4:5"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_2_3 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["2:3"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_5_8 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["5:8"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_golden <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["1:1.618"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_3_5 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["3:5"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_9_16 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["9:16"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_8_15 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["8:15"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_1_2 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["1:2"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_2_5 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["2:5"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_3_8 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["3:8"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_1_3 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["1:3"]]

  invisible(chart)
}

#' @rdname ratios
#' @export
layer_ratio_1_4 <- function(chart) {
  if (!is.chartist(chart)) {
    stop(
      "incorrect `chart` argument, expecting an object of class `chartist`",
      call. = FALSE
    )
  }

  chart$ratio <- .ratios[["1:4"]]

  invisible(chart)
}

