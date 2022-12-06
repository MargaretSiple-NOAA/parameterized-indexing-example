#' .. content for \description{} (no empty lines) ..
#'
#' .. content for \details{} ..
#'
#' @title
#' @param cyl_vec
#' @return
#' @author njtierney
#' @export
create_markdown_template <- function(cyl_vec, file_path) {

  src <- list()
  for(i in seq_len(length(cyl_vec))){
    cylcode <- cyl_vec[i]
    src[[i]] <- knitr::knit_expand(file = file_path)
  }
  
  src

}
