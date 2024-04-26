# ML_GC
Machine learning models for classification and subtying of GC.

1.For Classification,
The pre-trained model was saved in the bestLDA.Rds file. 
The model can be read as below:

lda.mod = readRds('./bestLDA.Rds')

Then, any new metabolism matrix with the 19 metabolites
(LPC 17:0,PE O-44:6|PE O-24:2_20:4,CAR 14:0,HexCer 42:2;2O|HexCer 18:1;2O/24:1,FA 28:3;O_Neg,HexCer 42:2;3O_iso2_Neg,LPE O-14:1_Neg,PE 36:4|PE 18:2_18:2_Neg,CAR 18:1,Cer 38:1;2O|Cer 18:1;2O/20:0_Neg,TG(P)50:2,FA 18:0;O_Neg,PC O-38:3,FA 16:2_Neg,PC O-42:6|PC O-22:2_20:4,Hex2Cer 42:2;2O|Hex2Cer 18:1;2O/24:1,PE 40:7|PE 18:1_22:6_Neg,LPE 20:4,PE 40:3_Neg)
can be utilized as the input for prediction of being a GC sample.

The code was in predict_LDA.R

2.For subtyping,
The pre-trained model was saved in the subtype_glmnet.Rds file.
The model can be read as below:

glm.mod = readRDS(file='subtype_glmnet.Rds')'

Then, any new metabolism matrix with 73 metabolites as saved in the model (colnames(glm.mod$trainingData)[-1])
can be utilized as the input for prediction of the subtypes.

The code was in subtype_glmnet.R
