\name{alphaEst}
\alias{alphaEst}
\docType{package}
\title{
	Estimate the Baseline Hazard for Discrete-Time Multivariate Frailty Model for Grouped Survival Data
}
\description{
  A method to estimate the baseline hazard for multivariate frailty model
}

\usage{
  alphaEst(m, dtime, delta, g)  	
}

\arguments{
  \item{m}{A integer to indicate which baseline hazard to estimate within the censoring time.}
  \item{dtime}{A vector contains censored time for each sample.}
  \item{delta}{A event indicator vector.}
  \item{g}{Numerical gene type vector.}
}


\value{
  A \code{list} with one object
  \item{alphaEst}{A scalar for the estimated baseline hazard.}
}


\examples{
# Generate dummy data	
dtime <- c(1, 3, 3, 2, 1, 1, 2, 3, 1)
delta <- c(1, 0, 1, 1, 1, 0, 1, 0, 1)
g     <- c(0, 1, 1, 1, 2, 2, 0, 0, 0)
res   <- alphaEst(1, dtime, delta, g) 
res
}

