\name{personality}
\alias{personality}
\title{A dataframe with personality data}
\author{Dominique Makowski}
\description{
A dataset containing normal and pathological personality traits data from an online questionnaire.

If you use this dataset for a publication, please refer to it as:
"personality-1.0".

Demographic variables:

-- Study_Level

The level of education. Should be treated as a factor. 0: Absence of Degree, 1: Secondary Eduction Degree, 2: Youth Training, 3: High-school Degree, 4: Higher National Diploma (2 years of higher education), 5: Bachelor Degree (3 years of higher education), 6: Master Degree (5 years of higher education), 7: Doctorate Degree (8 years of higher education)


}
\format{
1327 observations (rows) and 20 variables (columns)
}
\examples{
require(neuropsychology)

df <- personality

describe(df)
}
