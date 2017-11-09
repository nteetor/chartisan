`chartist-js` <- function() {
  shiny::addResourcePath("chartisan", system.file("www", package = "chartisan"))

  htmltools::singleton(
    tags$head(
      tags$script(src = "chartisan/chartist/chartist.min.js"),
      tags$script(src = "chartisan/chartist/chartist-plugin-axistitle.min.js"),
      tags$link(rel = "stylesheet", href = "chartisan/chartist/chartist.min.css")
    )
  )
}
