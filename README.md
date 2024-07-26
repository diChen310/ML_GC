# ML_GC
Machine learning models for classification of GC and healthy control samples.

For Classification,
The pre-trained model was saved in the bestLDA.Rds file. 
The model can be read as below:

lda.mod = readRds('./bestLDA.Rds')

Then, any new metabolism matrix with the 19 metabolites
(LPC 17:0,PE O-44:6|PE O-24:2_20:4,CAR 14:0,HexCer 42:2;2O|HexCer 18:1;2O/24:1,FA 28:3;O_Neg,HexCer 42:2;3O_iso2_Neg,LPE O-14:1_Neg,PE 36:4|PE 18:2_18:2_Neg,CAR 18:1,Cer 38:1;2O|Cer 18:1;2O/20:0_Neg,TG(P)50:2,FA 18:0;O_Neg,PC O-38:3,FA 16:2_Neg,PC O-42:6|PC O-22:2_20:4,Hex2Cer 42:2;2O|Hex2Cer 18:1;2O/24:1,PE 40:7|PE 18:1_22:6_Neg,LPE 20:4,PE 40:3_Neg) as the colunms
and the sampleID as the columns can be read into R as one matrix: idt.data;
the prediction can be done by the following codes:

input.items = colnames(lda.mod$trainingData)[-1]

idt.data = log2(as.matrix(idt.data))+5

idt.data = scale(idt.data)

ind.y = predict(lda.mod,idt.data[,input.items],type = 'prob')
The code was also in predict_LDA.R

For prognosis subtype prediction, the  predictor model can be read from the .Rds object
glm.mod = readRDS(file='subtype_glmnet.Rds')
and the prediction can be done by the following codes:
########The input features
input.items = colnames(glm.mod$trainingData)[-1]

####prediction for the other datasets, pred.data
pred.data = new.pred[,c(-1,-2,-3,-4)]
rownames(pred.data)=new.pred$name
pred.data = log2(as.matrix(pred.data))+5
pred.data = scale(pred.data)
pred.data.t = pred.data[,out.items.uncor]

####The predicted result for one sample return MC1, MC2 or MC3 
pred.data.pred = predict(mod.lda,pred.data.t) 

The code was also in subtype_glmnet.R

