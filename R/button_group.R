#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
button_group <- function(
    inputId,
    label,
    choices,
    status = "primary"
) {
  reactR::createReactShinyInput(
    inputId,
    "button_group",
    htmltools::htmlDependency(
      name = "button_group-input",
      version = "1.0.0",
      src = "www/reactstrapTest",
      package = "reactstrapTest",
      script = "main.js"
    ),
    default = choices[1],
    configuration = list(
      label = label,
      choices = choices,
      status = status
    ),
    htmltools::tags$div
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateButton_group <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
