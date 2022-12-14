# parameterized-indexing-example

A toy example to demonstrate figure indexing when you want to include "chapters" from a template into a larger report document, and knit to Word. 

## The product
A Word version of a report, with "results" chapters that loop through a set of parameters producing one section for each of those parameters. In my case, it will eventually be a list of 20-30 groundfish species. Here, for simplicity, it's cars w different numbers of cylinders. This is nice because you don't have to do any post-processing to get all the report sections to work together. No hijinx in Word... rejoice! :tada:

## :alembic: Quarto solution
Eli Holmes (@eeholmes) has developed a solution for this in quarto that is even cleaner and more awesome, and I recommend it if you're starting out on your report-building journey. Look at the files [`Template.qmd`](https://github.com/MargaretSiple-NOAA/parameterized-indexing-example/blob/main/markdown/Template.qmd) and [`Parent_Template.qmd`](https://github.com/MargaretSiple-NOAA/parameterized-indexing-example/blob/main/markdown/Parent_Template.qmd). The benefits of the new approach:

1. Figure and table cross-references are much cleaner in the .qmd file
2. Clean chunk notation for Quarto minimizes headaches
3. You can interchangeably knit .docx and .html files, whereas using the "Markdown-only solution" below limits you to .docx.

## :memo: Markdown-only solution
I use `knitr::knit_expand()` and `officer::run_reference()` to label figures and tables separately and index them properly in the final Word document. Yay! 


## Original issue
The main issue *was* this: the only way I knew how to create chapters iteratively was to use a `for()` loop with `rmarkdown::render()`, producing chapters. But then when I put them all together, the indexing in the final word doc didn't work because when you create a parameterized report, the figure tags are the same for each. So the Figures would be correctly labeled, but the in-text references would only refer to the first two figures in the larger report.


## Version info: 

R: 
> R 4.2.1

RStudio: 
> RStudio 2022.07.1+554 "Spotted Wakerobin" Release
(7872775ebddc40635780ca1ed238934c3345c5de, 2022-07-22) for Windows
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)
QtWebEngine/5.12.8 Chrome/69.0.3497.128 Safari/537.36


Word: 
> Microsoft Office Professional Plus 2019
