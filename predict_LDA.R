library(purrr)
library(vctrs)
library(vctrs)
library(rlang)
library(tibble)
library(tidyselect)
library(caret)


setwd('~/GC')
####Load the model as well as the input feature list
load("try10Modelsth0.7.RData")

best.i = 31#

####The input features
input.items = out.items.100[1:best.i]

####The best model
lda.mod = mls6[[best.i]]



####prediction for the other datasets, new.idt
rownames(new.idt)=new.idt$name
idt.data = new.idt[,c(-1,-2,-3,-4)]
idt.data = log2(as.matrix(idt.data))+5
idt.data = scale(idt.data,center = mean.all,scale=sd.all)
ind.y = predict(lda.mod,idt.data[,input.items],type = 'prob')
table(factor(new.idt$sampleType),factor(ifelse(ind.y[,2]>0.5,'P','N')))
tt=table(factor(new.idt$sampleType),factor(ifelse(ind.y[,2]>0.5,'P','N')))
####ROC for the prediction results
roc.res.ind.3 = roc(response = new.idt$sampleType,
                    predictor = ind.y[,2],
                    levels = unique(new.idt$sampleType))


