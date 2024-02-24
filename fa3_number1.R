bayesTheorem <- function(pA, pB, pBA) {
  pA_B <- pA * pBA / pB
  return(pA_B)
}

pR0_T0<-0.95
pR1_T1<-0.75
pT0<-0.70
pT1<-0.30
pR1_T0<-(1-pR0_T0)
pR1<-(pT0*pR1_T0)+(pT1*pR1_T1)
pR1
bayesTheorem(pT1, pR1, pR1_T1)




