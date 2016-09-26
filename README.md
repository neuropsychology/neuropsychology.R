# neuropsychology
An R Toolbox for Psychologists, Neuropsychologists and Neuroscientists

|Name|neuropsychology|
|----------------|---|
|Status|![](https://img.shields.io/badge/status-stable-brightgreen.svg)|
|Latest Version|![](https://img.shields.io/badge/version-0.1.2-brightgreen.svg)|
|Authors|Dominique Makowski|
|CRAN|https://CRAN.R-project.org/package=neuropsychology|
|Manual|https://cran.r-project.org/web/packages/neuropsychology/neuropsychology.pdf|
---
## Installation

- To get the stable version (`0.1.0`) From CRAN, run the following commands in your R console:

```R
install.packages("neuropsychology")
library("neuropsychology")
```

- To get the latest development version (`0.1.2`), run the following:

```R
install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R")
library("neuropsychology")
```

If it doesn't work, try [updating R](https://www.google.fr/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=update%20r).


---
## Feature Examples

### Use a data set
```R
df <- personality
```

Available datasets are:
- personality

See the description of each datasets by typing `?nameofthedataset` (ex: `?personality`) in the console.

### Get a correlation plot and table with significance stars
```R
cortable(personality)
```

This function will automatically select the numeric columns of your dataframe and show a correlation table with significance stars.
You can adjust the p value by applying different corrections or change the type of correlation type (Spearman's or Pearson's). You can also view the result in RStudio or save it as a .csv file to open it in excel. Run `?cortable` for documentation.

<p align="legt"><img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/cortable_plot.png" width="700"></p>

### Describe a dataframe
```R
describe(personality)
```

This function prints a nice summary of your dataframe. Note that you can also group the descriptions by a factor using the "group" argument. See `?describe` for more documentation.

```R
 Numeric 
                                  mean median    var    sd valid.n
Age                              26.80  22.88 112.19 10.59    1302
Salary                            0.86   0.00   1.50  1.23     904
Study_Level                       4.51   5.00   1.64  1.28    1327
BMI                              22.14  21.28  15.38  3.92    1292
Extraversion                      3.39   3.50   2.26  1.50    1327
...

 Factor 
         
Sex             F      M
  Count   1053.00 274.00
  Percent   79.35  20.65
Mode F 
             
Mood_Disorder Absence Presence
      Count   1186.00   141.00
      Percent   89.37    10.63
Mode Absence
...
```
You can also chain the selection and filtering of the variables using the power of [dplyr](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html):

```R
personality %>%
  filter(Mood_Disorder=="Absence") %>%
  select(Sex, Antagonism, Negative_Affect, Extraversion) %>%
  describe(group="Sex")
```
```R
Description of F 
 Numeric 
                mean median  var   sd valid.n
Antagonism      1.71    1.6 1.05 1.02     941
Negative_Affect 3.38    3.4 1.98 1.41     941
Extraversion    3.43    3.5 2.21 1.49     941

Description of M 
 Numeric 
                mean median  var   sd valid.n
Antagonism      2.37   2.20 1.56 1.25     245
Negative_Affect 2.65   2.60 1.74 1.32     245
Extraversion    3.27   3.25 2.30 1.52     245
```


---
## Citation

Run the following commands to see the proper citation entry in APA6 or Bibtex format:
```R
library("neuropsychology")
citation("neuropsychology")
```
