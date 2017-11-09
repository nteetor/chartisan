# the return value is a formula because `jsonify` treats formulas as bare
# json
jsonify_plugins <- function(chart) {
  base <- "[%s]"
  plugins <- chart$options$plugins
  json <- ~ .

  if (length(plugins) == 0) {
    json[[2]] <- sprintf(base, "")
    return(json)
  }

  parsed <- vapply(
    names2(plugins),
    function(nm) {
      if (nm == "title") {
        plugin_title(plugins[[nm]])
      } else {
        stop(
          'error parsing chart plugins, unknown plugin "', nm, "'",
          call. = FALSE
        )
      }
    },
    character(1)
  )
  opts <- paste0(parsed, collapse = ", ")

  json[[2]] <- sprintf(base, opts)
  json
}

plugin_title <- function(options) {
  base <- "Chartist.plugins.ctAxisTitle(%s)"

  sprintf(base, jsonify(options))
}
