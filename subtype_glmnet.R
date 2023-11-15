library(purrr)
library(vctrs)
library(rlang)
library(tibble)
library(tidyselect)
library(caret)
####Read the subtype predictor model
glm.mod = readRDS(file='subtype_glmnet.Rds')
########The input features
input.items = colnames(glm.mod$trainingData)[-1]

####prediction for the other datasets, pred.data
pred.data = new.pred[,c(-1,-2,-3,-4)]
rownames(pred.data)=new.pred$name
pred.data = log2(as.matrix(pred.data))+5
pred.data = scale(pred.data,center = mean.all,scale=sd.all)
pred.data.t = pred.data[,out.items.uncor]

####The predicted result for one sample return MC1, MC2 or MC3 
pred.data.pred = predict(mod.lda,pred.data.t) 