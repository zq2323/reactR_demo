#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
action_button <- function(inputId, label, status = "primary") {
  reactR::createReactShinyInput(
    inputId,
    "action_button",
    htmltools::htmlDependency(
      name = "action_button-input",
      version = "1.0.0",
      src = "www/reactstrapTest/action_button",
      package = "reactstrapTest",
      script = "main.js"
    ),
    default = 0,
    configuration = list(
      label,
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
update_action_button <- function(session, inputId, value,
                                 configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) {
    message$configuration <- configuration
  }
  session$sendInputMessage(inputId, message);
}
