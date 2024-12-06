#' ---
#' title: "Project Report"
#' author:
#'   - name: "Kristina Golden"
#'   - name: "Christoher Hill"
#' format: 
#'   html:
#'     toc: true    
#'     toc-depth: 3 
#' editor: visual
#' execute:
#'   echo: false    
#' editor_options: 
#'   chunk_output_type: console
#' appendix: true
#' ---
#' 
#' \newpage
#' 
## -----------------------------------------------------------------------------
#data <- readRDS("modeled_data.rds")
models <- readRDS("models.rds")

# Show summary contents of the models object
summary(models)

#' 
#' 
## -----------------------------------------------------------------------------
# Extract and display the source code
source_code <- knitr::purl("Report.qmd", documentation = 2)
cat(readLines(source_code), sep = "\n")

