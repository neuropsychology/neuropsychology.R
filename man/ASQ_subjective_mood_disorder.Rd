\name{ASQ_subjective_mood_disorder}
\alias{ASQ_subjective_mood_disorder}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Subjectively reported mood disorder detection based on the ASQ scores.}
\description{
Returns the probability of subjectively reporting a mood disorder based on scores from the ASQ questionnaire.
}
\usage{
ASQ_subjective_mood_disorder(Suppression, 
                            Pretending, 
                            Feeling_of_Control, 
                            Cognitive_Change, 
                            Acceptance)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Suppression}{The Suppression score (from 0 to 7).}
  \item{Pretending}{The Pretending score (from 0 to 7).}
  \item{Feeling_of_Control}{The Feeling_of_Control score (from 0 to 7).}
  \item{Cognitive_Change}{The Cognitive_Change score (from 0 to 7).}
  \item{Acceptance}{The Acceptance score (from 0 to 7).}
}
\value{
\item{prob}{The probability of subjectively reporting a mood disorder.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

ASQ_subjective_mood_disorder(4, 2, 1, 4, 3)
}
