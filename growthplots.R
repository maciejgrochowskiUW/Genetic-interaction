library("growthcurver")
setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.05.11")
dat1 <- read.csv(file = "Bioscreen_output_table_220511.csv", header = T)
dat1 <- as.data.frame(dat1)
dat1 <- dat1[-c(1:3,120:nrow(dat1)),]
names(dat1)[1] <- paste("time")
for (a in 1:ncol(dat1)){
  dat1[,a] <- dat1[,a]-dat1[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat1))
dat1 <- subset(dat1, select = vec)
min(dat1[nrow(dat1),])
for (a in 2:ncol(dat1)){
  dat1[dat1[,a] > 0.35, a] <- 0.35
}


setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.06.01")
dat2 <- read.csv(file = "Maciek_220601_output.csv", header = T)
dat2 <- as.data.frame(dat2)
dat2 <- dat2[-c(1:3,120:nrow(dat2)),-c(70:ncol(dat2))]
names(dat2)[1] <- paste("time")
for (a in 1:ncol(dat2)){
  dat2[,a] <- dat2[,a]-dat2[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat2))
dat2 <- subset(dat2, select = vec)
min(dat2[nrow(dat2),])
for (a in 2:ncol(dat2)){
  dat2[dat2[,a] > 0.3, a] <- 0.3
}


setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.04.20")
dat3 <- read.csv(file = "Bioscreen_output_table.csv", header = T)
dat3 <- as.data.frame(dat3)
dat3 <- dat3[-c(1:3,120:nrow(dat3)),-c(52:ncol(dat3))]
names(dat3)[1] <- paste("time")
for (a in 1:ncol(dat3)){
  dat3[,a] <- dat3[,a]-dat3[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat3))
dat3 <- subset(dat3, select = vec)
min(dat3[nrow(dat3),])
for (a in 2:ncol(dat3)){
  dat3[dat3[,a] > 0.14, a] <- 0.14
}


setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.04.06")
dat4 <- read.csv(file = "Bioscreen_output_table.csv", header = T)
dat4 <- as.data.frame(dat4)
dat4 <- dat4[-c(1:3,120:nrow(dat4)),-c(96:ncol(dat4))]
names(dat4)[1] <- paste("time")
for (a in 1:ncol(dat4)){
  dat4[,a] <- dat4[,a]-dat4[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat4))
dat4 <- subset(dat4, select = vec)
min(dat4[nrow(dat4),])
for (a in 2:ncol(dat4)){
  dat4[dat4[,a] > 0.39, a] <- 0.39
}

setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.03.17")
dat5 <- read.csv(file = "220316.csv", header = T, sep = "")
dat5 <- as.data.frame(dat5)
dat5 <- dat5[-c(1:3,120:nrow(dat5)),-c(92:ncol(dat5))]
names(dat5)[1] <- paste("time")
for (a in 1:ncol(dat5)){
  dat5[,a] <- dat5[,a]-dat5[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat5))
dat5 <- subset(dat5, select = vec)
min(dat5[nrow(dat5),])
for (a in 2:ncol(dat5)){
  dat5[dat5[,a] > 0.73, a] <- 0.73
}

setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.02.23")
dat6 <- read.csv(file = "220223.csv", header = T, sep = "")
dat6 <- as.data.frame(dat6)
dat6 <- dat6[-c(1:3,120:nrow(dat6)),]
names(dat6)[1] <- paste("time")
for (a in 1:ncol(dat6)){
  dat6[,a] <- dat6[,a]-dat6[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat6))
dat6 <- subset(dat6, select = vec)
min(dat6[nrow(dat6),])
for (a in 2:ncol(dat6)){
  dat6[dat6[,a] > 0.55, a] <- 0.55
}

setwd("C:/Users/TEAM_2018/Desktop/Maciek/Bioscreen/2022.02.02")
dat7 <- read.csv(file = "220202.csv", header = T, sep = "")
dat7 <- as.data.frame(dat7)
dat7 <- dat7[-c(1:3,120:nrow(dat7)),-c(52:ncol(dat7))]
names(dat7)[1] <- paste("time")
for (a in 1:ncol(dat7)){
  dat7[,a] <- dat7[,a]-dat7[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat7))
dat7 <- subset(dat7, select = vec)
min(dat7[nrow(dat7),])
for (a in 2:ncol(dat7)){
  dat7[dat7[,a] > 0.78, a] <- 0.78
}

setwd("C:/Users/TEAM_2018/Desktop/drop testy/CDL i CDS")
dat8 <- read.csv(file = "index_time.csv", header = T, sep = "")
dat8 <- as.data.frame(dat8)
dat8 <- dat8[-c(1:3,120:nrow(dat8)),-c(56:ncol(dat8))]
names(dat8)[1] <- paste("time")
for (a in 1:ncol(dat8)){
  dat8[,a] <- dat8[,a]-dat8[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat8))
dat8 <- subset(dat8, select = vec)
min(dat8[nrow(dat8),])
for (a in 2:ncol(dat8)){
  dat8[dat8[,a] > 0.5, a] <- 0.5
}

setwd("C:/Users/TEAM_2018/Desktop/drop testy/CLS")
dat9 <- read.csv(file = "index_time.csv", header = T, sep = ",")
dat9 <- as.data.frame(dat9)
dat9 <- dat9[-c(1:3,120:nrow(dat9)),]
names(dat9)[1] <- paste("time")
for (a in 1:ncol(dat9)){
  dat9[,a] <- dat9[,a]-dat9[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat9))
dat9 <- subset(dat9, select = vec)
vec <- grep("slabiak", colnames(dat9))
dat9 <- subset(dat9, select = -vec)
min(dat9[nrow(dat9),])
for (a in 2:ncol(dat9)){
  dat9[dat9[,a] > 0.3, a] <- 0.3
}

setwd("C:/Users/TEAM_2018/Desktop/drop testy/CLX")
dat10 <- read.csv(file = "index_time.csv", header = T, sep = "")
dat10 <- as.data.frame(dat10)
dat10 <- dat10[-c(1:3,120:nrow(dat10)),]
names(dat10)[1] <- paste("time")
for (a in 1:ncol(dat10)){
  dat10[,a] <- dat10[,a]-dat10[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat10))
dat10 <- subset(dat10, select = vec)
min(dat10[nrow(dat10),])
for (a in 2:ncol(dat10)){
  dat10[dat10[,a] > 0.52, a] <- 0.52
}

setwd("C:/Users/TEAM_2018/Desktop/drop testy/DLS")
dat11 <- read.csv(file = "index_time.csv", header = T, sep = "")
dat11 <- as.data.frame(dat11)
dat11 <- dat11[-c(1:3,120:nrow(dat11)),]
names(dat11)[1] <- paste("time")
for (a in 1:ncol(dat11)){
  dat11[,a] <- dat11[,a]-dat11[1,a]
}
vec <- grep("time|YES_WT\\.|YES_cid1\\.|YES_dis32\\.|YES_lsm1\\.|YES_ski2\\.|YES_cid1dis32\\.|YES_cid1lsm1\\.|YES_cid1ski2\\.|YES_dis32lsm1\\.|YES_dis32ski2\\.|YES_lsm1ski2\\.|YES_cid1dis32lsm1\\.|YES_cid1dis32ski2\\.|YES_cid1lsm1ski2\\.|YES_dis32lsm1ski2\\.", colnames(dat11))
dat11 <- subset(dat11, select = vec)
dat11 <- subset(dat11, select = -c(65:67))
min(dat11[nrow(dat11),])
for (a in 2:ncol(dat11)){
  dat11[dat11[,a] > 0.25, a] <- 0.25
}



gc_out1 <- SummarizeGrowthByPlate(dat1, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out2 <- SummarizeGrowthByPlate(dat2, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out3 <- SummarizeGrowthByPlate(dat3, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out4 <- SummarizeGrowthByPlate(dat4, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out5 <- SummarizeGrowthByPlate(dat5, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out6 <- SummarizeGrowthByPlate(dat6, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out7 <- SummarizeGrowthByPlate(dat7, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out8 <- SummarizeGrowthByPlate(dat8, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out9 <- SummarizeGrowthByPlate(dat9, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out10 <- SummarizeGrowthByPlate(dat10, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")
gc_out11 <- SummarizeGrowthByPlate(dat11, plot_fit = TRUE, plot_file = "plot_growthcurver.pdf")

grepstrains <- c("YES_WT\\.", "YES_cid1\\.", "YES_dis32\\.", "YES_lsm1\\.", "YES_ski2\\.", "YES_cid1dis32\\.", "YES_cid1lsm1\\.", "YES_cid1ski2\\.", "YES_dis32lsm1\\.", "YES_dis32ski2\\.", "YES_lsm1ski2\\.", "YES_cid1dis32lsm1\\.", "YES_cid1dis32ski2\\.", "YES_cid1lsm1ski2\\.", "YES_dis32lsm1ski2\\.")
strains <- c("WT", "cid1", "dis32", "lsm1", "ski2", "cid1dis32", "cid1lsm1", "cid1ski2", "dis32lsm1", "dis32ski2", "lsm1ski2", "cid1dis32lsm1", "cid1dis32ski2", "cid1lsm1ski2", "dis32lsm1ski2")


tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out1[,1], value = T))
  tgen <- append(tgen, gc_out1[grep(a, gc_out1[,1]),6])
  sample <- append(sample, gc_out1[grep(a, gc_out1[,1]),1])
}

exp1 <- data.frame(sample, tgen)
meanex1 <- c()

for (a in grepstrains) {
  print(grep(a, exp1[,1], value = T))
  meanex1 <- append(meanex1, mean(exp1[grep(a, exp1[,1]),2]))
}

exp1mean <- data.frame(strains,meanex1)
exp1mean[,2] <- exp1mean[,2]/exp1mean[1,2]

#####################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out2[,1], value = T))
  tgen <- append(tgen, gc_out2[grep(a, gc_out2[,1]),6])
  sample <- append(sample, gc_out2[grep(a, gc_out2[,1]),1])
}

exp2 <- data.frame(sample, tgen)
meanex2 <- c()

for (a in grepstrains) {
  print(grep(a, exp2[,1], value = T))
  meanex2 <- append(meanex2, mean(exp2[grep(a, exp2[,1]),2]))
}

exp2mean <- data.frame(strains,meanex2)
exp2mean[,2] <- exp2mean[,2]/exp2mean[1,2]

#####################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out3[,1], value = T))
  tgen <- append(tgen, gc_out3[grep(a, gc_out3[,1]),6])
  sample <- append(sample, gc_out3[grep(a, gc_out3[,1]),1])
}

exp3 <- data.frame(sample, tgen)
meanex3 <- c()

for (a in grepstrains) {
  print(grep(a, exp3[,1], value = T))
  meanex3 <- append(meanex3, mean(exp3[grep(a, exp3[,1]),2]))
}

exp3mean <- data.frame(strains,meanex3)
exp3mean[,2] <- exp3mean[,2]/exp3mean[1,2]

######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out4[,1], value = T))
  tgen <- append(tgen, gc_out4[grep(a, gc_out4[,1]),6])
  sample <- append(sample, gc_out4[grep(a, gc_out4[,1]),1])
}

exp4 <- data.frame(sample, tgen)
meanex4 <- c()

for (a in grepstrains) {
  print(grep(a, exp4[,1], value = T))
  meanex4 <- append(meanex4, mean(exp4[grep(a, exp4[,1]),2]))
}

exp4mean <- data.frame(strains,meanex4)
exp4mean[,2] <- exp4mean[,2]/exp4mean[1,2]

######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out5[,1], value = T))
  tgen <- append(tgen, gc_out5[grep(a, gc_out5[,1]),6])
  sample <- append(sample, gc_out5[grep(a, gc_out5[,1]),1])
}

exp5 <- data.frame(sample, tgen)
meanex5 <- c()

for (a in grepstrains) {
  print(grep(a, exp5[,1], value = T))
  meanex5 <- append(meanex5, mean(exp5[grep(a, exp5[,1]),2]))
}

exp5mean <- data.frame(strains,meanex5)
exp5mean[,2] <- exp5mean[,2]/exp5mean[1,2]

######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out6[,1], value = T))
  tgen <- append(tgen, gc_out6[grep(a, gc_out6[,1]),6])
  sample <- append(sample, gc_out6[grep(a, gc_out6[,1]),1])
}

exp6 <- data.frame(sample, tgen)
meanex6 <- c()

for (a in grepstrains) {
  print(grep(a, exp6[,1], value = T))
  meanex6 <- append(meanex6, mean(exp6[grep(a, exp6[,1]),2]))
}

exp6mean <- data.frame(strains,meanex6)
exp6mean[,2] <- exp6mean[,2]/exp6mean[1,2]

######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out7[,1], value = T))
  tgen <- append(tgen, gc_out7[grep(a, gc_out7[,1]),6])
  sample <- append(sample, gc_out7[grep(a, gc_out7[,1]),1])
}

exp7 <- data.frame(sample, tgen)
meanex7 <- c()

for (a in grepstrains) {
  print(grep(a, exp7[,1], value = T))
  meanex7 <- append(meanex7, mean(exp7[grep(a, exp7[,1]),2]))
}

exp7mean <- data.frame(strains,meanex7)
exp7mean[,2] <- exp7mean[,2]/exp7mean[1,2]


######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out8[,1], value = T))
  tgen <- append(tgen, gc_out8[grep(a, gc_out8[,1]),6])
  sample <- append(sample, gc_out8[grep(a, gc_out8[,1]),1])
}

exp8 <- data.frame(sample, tgen)
meanex8 <- c()

for (a in grepstrains) {
  print(grep(a, exp8[,1], value = T))
  meanex8 <- append(meanex8, mean(exp8[grep(a, exp8[,1]),2]))
}

exp8mean <- data.frame(strains,meanex8)
exp8mean[,2] <- exp8mean[,2]/exp8mean[2,2]
######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out9[,1], value = T))
  tgen <- append(tgen, gc_out9[grep(a, gc_out9[,1]),6])
  sample <- append(sample, gc_out9[grep(a, gc_out9[,1]),1])
}

exp9 <- data.frame(sample, tgen)
meanex9 <- c()

for (a in grepstrains) {
  print(grep(a, exp9[,1], value = T))
  meanex9 <- append(meanex9, mean(exp9[grep(a, exp9[,1]),2]))
}

exp9mean <- data.frame(strains,meanex9)
exp9mean[,2] <- exp9mean[,2]/exp9mean[1,2]

######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out10[,1], value = T))
  tgen <- append(tgen, gc_out10[grep(a, gc_out10[,1]),6])
  sample <- append(sample, gc_out10[grep(a, gc_out10[,1]),1])
}

exp10 <- data.frame(sample, tgen)
meanex10 <- c()

for (a in grepstrains) {
  print(grep(a, exp10[,1], value = T))
  meanex10 <- append(meanex10, mean(exp10[grep(a, exp10[,1]),2]))
}

exp10mean <- data.frame(strains,meanex10)
exp10mean[,2] <- exp10mean[,2]/exp10mean[1,2]

######################################################################

tgen <- c()
sample <- c()

for (a in grepstrains) {
  print(grep(a, gc_out11[,1], value = T))
  tgen <- append(tgen, gc_out11[grep(a, gc_out11[,1]),6])
  sample <- append(sample, gc_out11[grep(a, gc_out11[,1]),1])
}

exp11 <- data.frame(sample, tgen)
meanex11 <- numeric()
meanex11 <- as.numeric(meanex11)
library(dplyr)


for (a in grepstrains) {
  print(grep(a, exp11[,1], value = T))
  meanex11 <- append(meanex11, mean(exp11[grep(a, exp11[,1]),2]))
}

exp11mean <- data.frame(strains,meanex11)
exp11mean[,2] <- exp11mean[,2]/exp11mean[1,2]

mydata <- merge(exp1mean, exp2mean, by = "strains")
mydata <- merge(mydata, exp3mean, by = "strains")
mydata <- merge(mydata, exp4mean, by = "strains")
mydata <- merge(mydata, exp5mean, by = "strains")
mydata <- merge(mydata, exp6mean, by = "strains")
mydata <- merge(mydata, exp7mean, by = "strains")
mydata <- merge(mydata, exp8mean, by = "strains")
mydata <- merge(mydata, exp9mean, by = "strains")
mydata <- merge(mydata, exp10mean, by = "strains")
mydata <- merge(mydata, exp11mean, by = "strains")



mydata$meanres <- apply(mydata[,2:12],1,mean, na.rm = T)
mydata$meansd <- apply(mydata[,2:12],1,sd, na.rm = T)

mydata2 <- mydata[,c(1,13,14)]
rownames(mydata2) <- mydata[,1]
mydata2 <- as.data.frame(mydata2[,-1])
mydata2[,2] <- mydata2[,1]
mydata3 <- as.matrix(mydata2)
mydata3 <- mydata3[order(mydata3[,ncol(mydata3)]),]
mydata4 <- matrix(c(NaN, 1.040, 1.368, 2.231, 1.040, NaN, 2.089, 1.183, 1.368, 2.089, NaN, 5.196, 2.231, 1.182, 5.196, NaN, NaN, NaN, 2.042, 1.408, NaN, 2.042, NaN, 3.711, NaN, 1.408, 3.711, NaN, 2.042, NaN, NaN, 4.985, 1.408, NaN, 4.985, NaN, 3.711, 4.985, NaN, NaN),nrow = 10, ncol = 4, byrow = T)
mydata5 <- matrix(c(0.999, 1.040, 1.368, 2.231, 1.040, 0.986, 2.089, 1.183, 1.368, 2.089, 1.704, 5.196, 2.231, 1.182, 5.196, 1.214, 1.040, 1.040, 2.042, 1.408, 1.368, 2.042, 1.368, 3.711, 2.231, 1.408, 3.711, 2.231, 2.042, 2.089, 2.089, 4.985, 1.408, 1.183, 4.985, 1.183, 3.711, 4.985, 5.196, 5.196),nrow = 10, ncol = 4, byrow = T)
rownames(mydata4) <- c("cid1", "dis32", "lsm1", "ski2", "cid1dis32", "cid1lsm1", "cid1ski2", "dis32lsm1", 'dis32ski2', "lsm1ski2")
colnames(mydata4) <- c("cid1", "dis32", "lsm1", "ski2")
rownames(mydata5) <- c("cid1", "dis32", "lsm1", "ski2", "cid1dis32", "cid1lsm1", "cid1ski2", "dis32lsm1", 'dis32ski2', "lsm1ski2")
colnames(mydata5) <- c("cid1", "dis32", "lsm1", "ski2")
dist_no_na <- function(mydata4) {
  edist <- dist(mydata4)
  edist[which(is.na(edist))] <- max(edist, na.rm=TRUE) * 1.1 
  return(edist)
}
cid1 <- mydata3[c(2,4,7,8,10,12,13),]
cidparental <- mydata3[c(3,1,9,5,11,6,15),1]
cid <- cbind(cidparental,cid1)
cid <- cid[,-3]
rownames(cid) <- rownames(cid1)

dis32 <- mydata3[c(1,4,5,8,10,11,14),]
disparental <- mydata3[c(3,2,6,12,7,9,15),1]
dis <- cbind(disparental,dis32)
dis <- dis[,-3]
rownames(dis) <- rownames(dis32)


library(RColorBrewer)
color <- brewer.pal(7, "Blues")
library(gplots)
heatmap.2(mydata3, dendrogram = "none", Rowv=FALSE, Colv=FALSE, col = color, trace = "none", density.info="none", margins =c(12,9),breaks = c(1,1.15,1.35,1.7,2,3,4,5),  cexCol = 1.5)
heatmap.2(mydata4, dendrogram = "none", col = color, trace = "none", density.info="none", margins =c(12,9),breaks = c(1,1.15,1.35,1.7,2,3,4,5), distfun=dist_no_na, na.color="white", cexRow = 1.5, cexCol = 1.5)
heatmap.2(mydata5, dendrogram = "row", col = color, trace = "none", density.info="none", margins =c(12,9),breaks = c(1,1.15,1.35,1.7,2,3,4,5), cexRow = 1.5, cexCol = 1.5)
heatmap.2(cid, dendrogram = "none", Rowv=FALSE, Colv=FALSE, col = color, trace = "none", density.info="none", margins =c(12,9),breaks = c(1,1.15,1.35,1.7,2,3,4,5),  cexCol = 1.5)
heatmap.2(dis, dendrogram = "none", Rowv=FALSE, Colv=FALSE, col = color, trace = "none", density.info="none", margins =c(12,9),breaks = c(1,1.15,1.35,1.7,2,3,4,5),  cexCol = 1.5)

pdf("heatmap.pdf", 7,7)
heatmap.2(mydata3, dendrogram = "none", Rowv=FALSE, Colv=FALSE, col = color, trace = "none", density.info="none", margins =c(12,9),breaks = c(1,1.15,1.35,1.7,2,3,4,5),  cexCol = 1.5)
dev.off()

id <- c("s01", "s02", "s03", "s04")
strain <- c("cid1", "dis32", "lsm1", "ski2")
phenotype <- c(1.001, 1.014, 0.587, 0.824)
type2 <- c(1,2,2,2)
kuleczki <- cbind(id, strain, phenotype, type2)
kuleczki <- as.matrix(kuleczki)



from <- c("s01", "s01", "s01", "s02", "s02", "s03")
to <- c("s02", "s03", "s04", "s03", "s04", "s04")
weight <- c(0.079, 0.315, 0.879, 0.314, 0.017, 1.328) #log2(1-[a*b/AB]) where a and b - phenotype of single del strains, AB - phenotype of double del strain
type <- c(3, 2, 1, 1, 3, 1)
kreseczki <- cbind(from, to, weight, type)
kreseczki <- as.matrix(kreseczki)


id <- c("s01", "s02", "s03", "s04", "s05", "s06", "s07", "s08", "s09", "s10")
strain <- c("cid1", "dis32", "lsm1", "ski2","cid1dis32", "cid1lsm1", "cid1ski2", "dis32lsm1", "dis32ski2", "lsm1ski2")
phenotype <- c(1.001, 1.014, 0.587, 0.824, 0.962, 0.731, 0.448, 0.479, 0.845, 0.192)
type2 <- c(1,2,2,2,2,2,2,2,2,2)
kuleczki <- cbind(id, strain, phenotype, type2)
kuleczki <- as.matrix(kuleczki)


#type <- c("negative", "positive", "negative", "negative", "positive", "negative")
from <- c("s01", "s01", "s01", "s02", "s02", "s03", "s01", "s01", "s01", "s02", "s02", "s02", "s03", "s03", "s03", "s04", "s04", "s04")
to <- c("s02", "s03", "s04", "s03", "s04", "s04", "s08", "s09", "s10", "s06", "s07", "s10", "s05", "s07", "s09", "s05", "s06", "s08")
weight <- c(0.079, 0.315, 0.879, 0.314, 0.017, 1.328, 0.032, 0.252, 0.484, 0.598, 0.644, 0.039, 0.204, 0.035, 1.306, 0.157, 1.213, 0.975)
type <- c(3, 2, 1, 1, 3, 1, 3, 1, 2, 1, 2, 3, 1, 3, 1, 1, 1, 1)
kreseczki <- cbind(from, to, weight, type)
kreseczki <- as.matrix(kreseczki)



net <- graph_from_data_frame(d=kreseczki, vertices=kuleczki, directed=T) 
deg <- degree(net, mode="all")
V(net)$size <- deg*3
V(net)$size <- as.numeric(V(net)$phenotype)*40
lightblue <- brewer.pal(11,"RdGy")
colrs2 <- c("orange", lightblue[7])
colrs3 <- c("orange", lightblue[9])
V(net)$color <- colrs2[as.numeric(V(net)$type2)]
V(net)$color2 <- colrs3[as.numeric(V(net)$type2)]
E(net)$width <- as.numeric(E(net)$weight)*7
E(net)$arrow.size <- 0
negative <- brewer.pal(9, "YlOrRd")
positive <- brewer.pal(12,"Set3")
colrs <- c(negative[6], "#00FF00","grey")
E(net)$edge.color <- colrs[as.numeric(E(net)$type)]
edge.start <- ends(net, es=E(net), names=F)[,1]
edge.col <- V(net)$color[edge.start]
graph_attr(net, "layout") <- layout_in_circle


pdf("interactionnetwork2.pdf", 7,7)
plot(net, vertex.label= kuleczki[,2], edge.color = E(net)$edge.color, vertex.color = V(net)$color, vertex.frame.color = V(net)$color2)
dev.off()

plot(net, vertex.label= kuleczki[,2], edge.color = E(net)$edge.color, vertex.color = lightblue[8], vertex.frame.color = lightblue[9])