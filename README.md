# neuropsychology
An R Toolbox for Psychologists, Neuropsychologists and Neuroscientists

|Name|neuropsychology|
|----------------|---|
|Status|![](https://img.shields.io/badge/status-stable-brightgreen.svg)|
|Latest Version|![](https://img.shields.io/badge/version-0.1-brightgreen.svg)|
|Authors|Dominique Makowski|

---
## Installation

Open R and paste the following commands:

```
install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
```

Once the package is installed, load the package each time you open a new R session by using the following command:

```
library(neuropsychology)
```

---
## Feature Examples

### Use a data set
```
df <- persomind
```

Available datasets are:
- persomind

See the description of each datasets by typing "?nameofthedataset" (ex: "?persomind") in the console

---
## Citation

Run the following command to see the proper citation entry in APA6 or Bibtex format:
```
library(neuropsychology)
citation("neuropsychology")
```
