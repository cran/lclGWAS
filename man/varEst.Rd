\name{varEst}
\alias{varEst}
\docType{package}
\title{
	Estimate the Frailty Variance for Discrete-Time Multivariate Frailty Model for Grouped Survival Data
}
\description{
  A method to estimate the frailty variance for multivariate frailty model
}

\usage{
  varEst(fam_size, alpha, dtime, delta, g, beta, m, lower, upper)  	
}

\arguments{
  \item{fam_size}{A vector contains the number of samples for each family.}
  \item{alpha}{Baseline hazard vector for each time intervals.}
  \item{dtime}{A vector of observed survival time for each sample.}
  \item{delta}{A event indicator vector: 1 means event and 0 means otherwise.}
  \item{g}{A vector for numerical gene type of each sample.}
  \item{beta}{A scalar for effect size.}
  \item{m}{A integer for the number of families.}
  \item{lower}{A scalar for the lower bound for the effect parameter estimation.}
  \item{upper}{A scalar for the upper bound for the effect parameter estimation.}
}


\value{
  A \code{list} with one object
  \item{varEst}{A scalar for the estimated frailty variance.}
}


\examples{
# Generate dummy data	
fam_size <- rep(3,3)
alpha <- c(0.7500000, 0.6666667, 0.5000000, 0.0000000)
dtime <- c(1, 3, 3, 2, 1, 1, 2, 3, 1)
delta <- c(1, 0, 1, 1, 1, 0, 1, 0, 1)
g     <- c(0, 1, 1, 1, 2, 2, 0, 0, 0)
beta  <- 1
m     <- 3
res   <- varEst(fam_size, alpha, dtime, delta, g, beta, m, lower = 0, upper = 2) 
res
}

