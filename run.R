
# Render the intro material
rmarkdown::render("markdown/IntroSections.Rmd",
                  output_file = "IntroSections.docx"
)

# Render a few chapters in a loop, which I intend to insert into the doc from above:

cyl.vec <- c(4,6)

for (i in 1:length(cyl.vec)){
  rmarkdown::render("markdown/ParameterizedChapter.Rmd",
                    params = list(
                      cylcode = cyl.vec[i]
                    ), output_file = paste0(
                      "ParameterizedChapter_",
                      cyl.vec[i],
                      "cylinders.docx")
                    )
}


# rmarkdown::render("markdown/Parent_Template.Rmd",
#                   output_file = "Parent_Template.docx"
# )