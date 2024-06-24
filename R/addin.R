library(rstudioapi)
library(httr)

# Check if running in RStudio
is_rstudio_available <- function() {
  if ("rstudioapi" %in% installed.packages()[, "Package"]) {
    if (rstudioapi::isAvailable()) {
      return(TRUE)
    }
  }
  return(FALSE)
}

# Function to interact with GPT-3.5 Turbo Chat API
get_comment <- function(line, api_key) {
  url <- "https://api.openai.com/v1/chat/completions"
  response <- httr::POST(url,
                         httr::add_headers(`Authorization` = paste("Bearer", api_key),
                                           `Content-Type` = "application/json"),
                         body = list(
                           model = "gpt-3.5-turbo",
                           messages = list(list(role = "user", content = paste("Explain the following R code line to a beginner in 10 words or less:\n", line))),
                           max_tokens = 20,
                           n = 1,
                           temperature = 0.5
                         ),
                         encode = "json")
  result <- httr::content(response, as = "parsed", type = "application/json")
  if (!is.null(result$choices) && length(result$choices) > 0) {
    comment <- trimws(result$choices[[1]]$message$content)
    return(comment)
  } else {
    return("No comment generated.")
  }
}

# Main function to add comments to the selected script
#' Comment Script
#'
#' This function adds comments to each line of the selected script using the GPT-3.5 Turbo API.
#'
#' @export
comment_script <- function() {
  if (!is_rstudio_available()) {
    stop("RStudio API is not available.")
  }

  # Ensure a document is open in RStudio
  context <- rstudioapi::getActiveDocumentContext()
  if (is.null(context)) {
    rstudioapi::showDialog("Error", "No active document found.")
    return(NULL)
  }

  # Get the selected text
  selected_text <- context$selection[[1]]$text
  if (nchar(selected_text) == 0) {
    rstudioapi::showDialog("Error", "No text selected.")
    return(NULL)
  }

  # Split the selected text into lines
  lines <- strsplit(selected_text, "\n")[[1]]

  # Prompt user for API key
  api_key <- rstudioapi::askForPassword("Enter your OpenAI API key:")
  if (is.null(api_key) || nchar(api_key) == 0) {
    rstudioapi::showDialog("Error", "API key is required.")
    return(NULL)
  }

  # Add comments to each line
  commented_lines <- sapply(lines, function(line) {
    if (nchar(line) > 0) {
      comment <- get_comment(line, api_key)
      return(paste("#", comment, "\n", line))
    } else {
      return(line)
    }
  })

  # Concatenate commented lines
  commented_text <- paste(commented_lines, collapse = "\n")

  # Replace the selected text with commented text
  rstudioapi::modifyRange(context$selection[[1]]$range, commented_text)

  # Notify user of completion
  rstudioapi::showDialog("Success", "Comments added to the selected script.")
}
