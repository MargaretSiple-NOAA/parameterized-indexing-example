# parameterized-indexing-example

A toy example to figure out figure indexing when you have parameterized reports as chapters. the main issue is this: when I render one chapter each for a small set of variables (in this case, the number of cylinders in a car), and combine them into one report document, the indexing works for the figures but not for the in-text cross-references of those figures.

If you run the `run.R` script, you'll end up with three .docx files. I want to be able to insert the two ParameterizedChapter.docx files at the bottom of IntroSections.docx. If you insert those two chapters into IntroSections.docx, and update all the fields, you'll see that the figure numbers march along as they should, but the in-text references continue to repeat. I think this is because the hyperlinks are based on the fig tags in the parameterized chapter.

I am aware that .docx is a little bit funky when it comes to output but I have to produce it in this format for... reasons.

Should I try to change the figure tags? Try some other way of rendering the sections besides using parameterized reports? I think parameterization is what I want to use because I will eventually have about 30 variables to loop through, and each chapter will be fairly complex (text, tables, and figures in each chapter).

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
