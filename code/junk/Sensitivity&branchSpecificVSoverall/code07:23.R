# Sensitivity test
# Forcing tau from 0.1 to 0.6
library(gridExtra)
library(dplyr)
source("Functions.R")

Sensitivity <- ListFunction("TauValues", "Matrix")
IGC_estimate <-as.vector(IGC1_Full_noforce_noclock$MG211)
Sensitivity <- cbind(Sensitivity, IGC_estimate)
save(Sensitivity, file = "sensitivity.Rdata")


pdf(file = "sensitivityTest.pdf", height = 30, width = 12)
grid.table(round(Sensitivity,4))
dev.off()

# branch specific tau v.s. overall tau
# 26:41 is row of branch specific tau, 9 is row of overall tau
a <- c()
b <- c()
for(i in IGC1_Full_noforce_noclock){
  a <- append(a, i[9])
  b <- append(b, i[28:41])
}
b <- matrix(b, nrow = 14)
rownames(b) <- names(IGC1_Full_noforce_noclock[[1]][28:41])
names(a) <- names(IGC1_Full_noforce_noclock)
colnames(b) <- names(IGC1_Full_noforce_noclock)

pdf("branch.specific.vs.overall.pdf",height=6,width=8)
for(j in 1:14){
  n <- names(IGC1_Full_noforce_noclock[[1]][28:41])[j]
  plot(a, (b[j,]/a), type = "n", xlab = "overallTau", ylab = n)
  text(a,(b[j,]/a), substr(names(b[j,]),3,length(names(b[j,]))))
  abline(a=0, b=1)
}
dev.off()



pdf("branch.specific.vs.overall(eg211).pdf",height=6,width=8)
for(j in 1:14){
  n <- names(eg211[28:41])[j]
  plot(a, (b[j,]/a), type = "n", xlab = "overallTau", ylab = n)
  text(a,(b[j,]/a), substr(names(b[j,]),3,length(names(b[j,]))))
  abline(a=0, b=1)
}
dev.off()

IGC1_matrix <- ListFunction("IGC1_Full_noforce_noclock", "Matrix")
branch <- rep(rownames(IGC1_matrix)[28:41], dim(IGC1_matrix)[2])
gene <- rep(colnames(IGC1_matrix), each = 14)
rb.bstau <- as.numeric(IGC1_matrix[28:41,]/rep(IGC1_matrix[9,], each = 14))

summary(rb.bstau)
rb.bstau.log <- log(rb.bstau)
rb.bstau.lm <- lm(rb.bstau.log~gene + branch)
rb.bstau.aov <- aov(rb.bstau.log~gene + branch)
Mean.sq <- summary(rb.bstau.aov)[[1]][,3]
rel.var <- Mean.sq/sum(Mean.sq)*100
names(rel.var) <- c("gene", "branch", "Residuals")

pdf("plot.pdf", height = 5, width = 10)
boxplot(rb.bstau~branch)
pie(rel.var)
dev.off()

getwd()
path = "Sensitivity&branchSpecificVSoverall/211/save/MG94_01_02_nonclock_summary.txt"

v <- scan(path, what = character())
splitPoint = (length(v) - 1)/2
value <- as.numeric(v[1:splitPoint])
names <- v[(splitPoint + 2):length(v)]
names(value) <- names
eg211 <- value

