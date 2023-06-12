#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
editableInput <- function(inputId, value = "") {
  reactR::createReactShinyInput(
    inputId,
    "editableInput",
    htmltools::htmlDependency(
      name = "editableInput-input",
      version = "1.0.0",
      src = "www/reactstrapTest",
      package = "reactstrapTest",
      script = "main.js",
    ),
    default = value,
    configuration = list(
      initialValue = value
    ),
    htmltools::tags$span
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateEditableInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
