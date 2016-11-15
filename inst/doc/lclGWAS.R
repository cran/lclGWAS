## ----setup1, include=FALSE, echo=FALSE-----------------------------------
require(knitr)

## ----setup2, include=FALSE,echo=FALSE-----------------------------------------
options(width=80)  # make the printing fit on the page
set.seed(1121)     # make the results repeatable
stdt<-date()

## ----function mutiple threads, eval=FALSE-------------------------------------
#   beta <- betaEst(fam_size, alpha, dtime,
#                   delta, g, var, m, lower = 0, upper = 2)

## ----function mutiple threads var, eval=FALSE---------------------------------
#   var <- varEst(fam_size, alpha, dtime,
#                 delta, g, beta, m, lower = 0, upper = 2)

## ----function mutiple threads alpha, eval=FALSE-------------------------------
#  alpha <- alphaEst(fam_size, alpha, dtime,
#                    delta, g, beta, m, lower = 0, upper = 2)

## ----inputPara,size='tiny'----------------------------------------------------
fsize  <- rep(3,3)
alphas <- c(0.7500000, 0.6666667, 0.5000000, 0.0000000)
dtimes <- c(1, 3, 3, 2, 1, 1, 2, 3, 1)
deltas <- c(1, 0, 1, 1, 1, 0, 1, 0, 1)
gs     <- c(0, 1, 1, 1, 2, 2, 0, 0, 0)
var    <- 0.2
m      <- 3
beta   <- 1

## ----loadpkg------------------------------------------------------------------
library(lclGWAS)

## ----exp3,size='tiny'---------------------------------------------------------
res   <- betaEst(fsize, alphas, dtimes, 
                 deltas, gs, var, m, lower = 0, upper = 2)
res

## ----exp5,size='tiny'---------------------------------------------------------
res   <- varEst(fsize, alphas, dtimes, 
                deltas, gs, var, beta, lower = 0, upper = 2)
res

## ----exp6,size='tiny'---------------------------------------------------------
res   <- alphaEst(1, dtimes, deltas, gs)
res

## ----sessinfo, echo=FALSE, include=TRUE, results='asis'-----------------------
toLatex(sessionInfo(), locale=FALSE)

## ----times, echo=FALSE, include=TRUE------------------------------------------
print(paste("Start Time",stdt))
print(paste("End Time  ",date()))

