#<p align="center"> Statistics for Psychologists with R: An Introduction </p>
**<p align="center"> Dominique Makowski </p>**

<p align="center"><img src="https://biblineuropsy.files.wordpress.com/2016/08/n.png" width="200"></p>


*<p align="center">This course is supported by the École de Neuropsychologie group.</p>*

---

## About the course

This course was crafted by psychologists, neuropsychologists and neuroscientists for psychologists, neuropsychologists and neuroscientists.
As such, it is a straighforward introduction to R with a special focus on how to get some actual results with it.
It is not a programming course, nor a course on statistics *per se*.

It is meant to be a short, straight to the point tutorial, that will not teach you R, nor statistics, but only how do quickly and easily do some things with your data using R.

Note that there are other tutorials teaching R for psychological research, that are deeper, longer and more comprehensive (such as [this one](http://personality-project.org/r/)).

### Contact

For remarks, complaints or anything else, you can contact the creator of this course via Linkedin (click [here](https://fr.linkedin.com/in/dominiquemakowski)) or via email (<dom.makowski@gmail.com>)



### Outline

Add the end of this course, you will:

- [x] Know a bit of the philosophy and history behind R
- [x] Use R for simple operations
- [x] Install packages
- [x] Read your data file with R
- [x] Explore your data
- [x] Run correlation analysis
- [x] Run linear regression analysis
- [x] Run an analysis of variance (ANOVA)

And, most importantly...

- [x] You won't be afraid of R or statistics anymore

## About R

### The Myth

- R is complicated
- It is hard to do some simple things
- You need to know programing and coding
- You need to be an expert of statistics

### History

- R was born in 1993
- Developped by statisticians for statistics



## Installation of R

You'll need two things: the language (R) and an editor (RStudio) with which you will comunicate with R.

### R

Download and install R for [MacOS](https://cran.r-project.org/bin/macosx/), [Windows](https://cran.r-project.org/bin/windows/) or [Linux](https://cran.r-project.org/bin/linux/).

### RStudio

R is the language. But it is only a language. After installing R, you will also need an editor. The most popular is RStudio.

Click on [this link](https://www.rstudio.com/products/rstudio/download3/) and then on the Download green button of RStudio Desktop (Free Licence). Then, choose your platforme (Windows, MacOS or Linux).

### Packages

The wealth of languages such as R, Python, Matlab or Julia is the existence of thousands of packages (or modules) that can extent their possibilities.

In R, there are two ways of installing a package. For the majority of packages, you can use the 'install.packages()' function. For example, we can download the "devtools" package by running the followind command:
  
  install.packages("devtools")
  
Note the use of the quote characters '"', that tell R that this is actually some text, not a function or something else.


### Load Data

|Sex |      Age| Salary| Study_Level|Mood_Disorder |      BMI|Meditation |Sport |Music | Extraversion| Empathy.Agreeableness| Conscientiousness| Instability.Neuroticism| Openness_to_Experience.Intellect| Honesty.Humility| Disinhibition| Detachment| Psychoticism| Negative_Affect| Antagonism|
|:---|--------:|------:|-----------:|:-------------|--------:|:----------|:-----|:-----|------------:|---------------------:|-----------------:|-----------------------:|--------------------------------:|----------------:|-------------:|----------:|------------:|---------------:|----------:|
|F   | 25.03818|      2|           6|Absence       | 22.64738|No         |No    |No    |         4.75|                  3.50|              2.25|                    4.75|                             3.75|             1.00|           5.8|        2.8|          4.0|             6.2|        4.6|
|M   | 25.87324|      3|           6|Absence       | 21.91381|No         |Yes   |Yes   |         3.25|                  3.50|              2.25|                    2.00|                             4.00|             4.75|           2.0|        2.2|          1.4|             2.4|        2.6|
|F   | 22.19897|      0|           5|Absence       | 23.05175|Yes        |Yes   |No    |         5.50|                  6.50|              3.75|                    3.25|                             6.00|             7.00|           3.2|        1.0|          2.6|             2.2|        1.4|
|F   | 27.25862|      2|           6|Absence       | 18.61150|No         |No    |No    |         5.00|                  4.75|              0.75|                    3.50|                             5.25|             7.00|           4.8|        0.2|          0.2|             1.6|        2.8|
|F   | 49.02227|      3|           6|Absence       | 21.23057|No         |Yes   |Yes   |         2.75|                  6.25|              2.25|                    2.00|                             4.50|             7.00|           1.0|        2.4|          2.6|             2.0|        2.0|


### Data types
### Subsetting
