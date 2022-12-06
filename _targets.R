## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

## tar_plan supports drake-style targets and also tar_target()
tar_plan(
  
  cyl_vec = c(4,6),
  
  tar_file(markdown_file_path, here::here('markdown','Template.qmd')),
  
  src = create_markdown_template(
    cyl_vec = cyl_vec, 
    file_path = markdown_file_path
    ),
  
  tar_quarto(name = document_thingy, 
             path = "markdown/Parent_Template.qmd")

# target = function_to_make(arg), ## drake style

# tar_target(target2, function_to_make2(arg)) ## targets style

)
