## ----load_packages, include=FALSE----------------------------------------
knitr::opts_knit$set(progress = TRUE, verbose = TRUE)
library(hicrep)
data("HiCR1")
data("HiCR2")

## ------------------------------------------------------------------------
dim(HiCR1)
HiCR1[1:10,1:10]

## ---- eval=TRUE----------------------------------------------------------
scc.out = get.scc(HiCR1, HiCR2, 1000000, 2, 0, 5000000)

#SCC score
scc.out$scc
#Standard deviation of SCC
scc.out$std

## ---- eval = TRUE--------------------------------------------------------

smd_mat = fast.mean.filter(HiCR1, 2)


## ---- eval=TRUE----------------------------------------------------------
h_hat <- htrain(HiCR1, HiCR2, 1000000, lbr = 0, ubr = 5000000, range = 0:2)

h_hat

## ------------------------------------------------------------------------
#check total number of reads before adjustment
sum(HiCR1)

# sub-sample 200000 total reads
DS_HiCR1 <- depth.adj(HiCR1, 200000) 

#check total number of reads after adjustment
sum(DS_HiCR1)

## ------------------------------------------------------------------------
sessionInfo()

## ------------------------------------------------------------------------
#check total number of reads before adjustment
sum(HiCR1)

# sub-sample 200000 total reads
DS_HiCR1 <- depth.adj(HiCR1, 200000) 

#check total number of reads after adjustment
sum(DS_HiCR1)

