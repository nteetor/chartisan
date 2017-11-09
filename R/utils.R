`%||%` <- function(a, b) if (is.null(a)) b else a

names2 <- function(x) {
  names(x) %||% rep.int("", length(x))
}

collate <- function(..., collapse = " ") {
  args <- unique(c(...))

  if (is.null(args)) {
    NULL
  } else if (all(args == "")) {
    NULL
  } else if (all(is.na(args))) {
    NA_character_
  } else {
    paste(args, collapse = collapse)
  }
}

enjson <- function(data, x, y) {
  data <- select(data, x = !!x, y = !!y)
  data <- arrange(data, x)

  # data <- distinct(data)  # I-i-i-i don't like this line
  #
  # data <- group_by(data, x)
  # data <- do(data, groups = .)
  # data <- data[[2]]
  # data <- lapply(data, function(df) as.list(df[1, ]))

  jsonlite::toJSON(data, auto_unbox = TRUE, rownames = FALSE)
}

is_list <- function(x) {
  length(class(x)) == 1 && class(x) == "list"
}

jsonify <- function(obj) {
  args <- lapply(
    obj,
    function(x) {
      if (is.null(x)) {
        x <- "undefined"
        class(x) <- "json"
        x
      } else if (inherits(x, "formula")) {
        x <- as.character(x[[2]])
        class(x) <- "json"
        x
      } else if (is_list(x)) {
        jsonify(x)
      } else {
        x
      }
    }
  )

  jsonlite::toJSON(args, json_verbatim = TRUE, auto_unbox = TRUE)
}
