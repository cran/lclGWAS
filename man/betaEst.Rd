\name{betaEst}
\alias{betaEst}
\docType{package}
\title{
	Estimate the Effect Parameter for Discrete-Time Multivariate Frailty Model for Grouped Survival Data
}
\description{
  A method to estimate the effect parameter for Multivariate Frailty Model
}

\usage{
  betaEst(fam_size, alpha, dtime, delta, g, var, m, lower, upper)  	
}

\arguments{
  \item{fam_size}{A vector contains the number of samples for each family.}
  \item{alpha}{Baseline hazard vector for each time intervals.}
  \item{dtime}{A vector of observed survival time for each sample.}
  \item{delta}{A event indicator vector: 1 means event and 0 means otherwise.}
  \item{g}{A vector for numerical gene type of each sample.}
  \item{var}{A scalar for frailty variance.}
  \item{m}{A integer for the number of families.}
  \item{lower}{A scalar for the lower bound for the effect parameter estimation.}
  \item{upper}{A scalar for the upper bound for the effect parameter estimation.}
}


\value{
  A \code{list} with one object
  \item{betaEst}{A scalar for the estimated effect parameter.}
}


\examples{
# Generate dummy data	
fam_size <- rep(3,3)
alpha <- c(0.7500000, 0.6666667, 0.5000000, 0.0000000)
dtime <- c(1, 3, 3, 2, 1, 1, 2, 3, 1)
delta <- c(1, 0, 1, 1, 1, 0, 1, 0, 1)
g     <- c(0, 1, 1, 1, 2, 2, 0, 0, 0)
var   <- 0.2
m     <- 3
res   <- betaEst(fam_size, alpha, dtime, delta, g, var, m, lower = 0, upper = 2) 
res
}

