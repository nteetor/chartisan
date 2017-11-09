as.tags.chartist <- function(x, ...) {
  selector <- if (is.null(x$id)) ".ct-chart" else paste0("#", x$id)

  base <- paste0(
    "new Chartist.", x$type, "('", selector, "', { series: %s }, %s);"
  )

  x$options$plugins <- jsonify_plugins(x)

  tagList(
    `chartist-js`(),
    tags$div(
      class = collate("ct-chart", x$ratio),
      id = x$id
    ),
    tags$script(
      sprintf(base, x$data, jsonify(x$options))
    )
  )
}

print.chartist <- function(x, ...) {
  shiny::runApp(
    shiny::shinyApp(
      ui = shiny::fluidPage(
        shiny::fluidRow(
          shiny::column(
            width = 12,
            as.tags(x)
          )
        )
      ),
      server = function(input, output) {

      }
    )
  )
}
