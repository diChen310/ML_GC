# ML_GC
Machine learning models for classification and subtying of GC.

1.For Classification,
The pre-trained model was saved in the bestLDA.Rds file. 
The model can be read as below:

lda.mod = readRds('./bestLDA.Rds')

Then, any new metabolism matrix with the 31 metabolites
(LPC 17:0,LPE O-16:1,PE O-44:6|PE O-24:2_20:4,LPC 20:0,CAR 14:0,HexCer 42:2;2O|HexCer 18:1;2O/24:1,PE O-38:6|PE O-16:1_22:5,PC 38:6|PC 16:0_22:6,PC 42:6,CAR 18:1,SM 38:1;2O,SM 35:2;2O,SM 30:1;2O_Neg,FA 44:11_Neg,PE O-37:7|PE O-15:1_22:6_Neg,Cer 39:1;2O_Neg,PC O-36:5;O_iso1_Neg,PC O-35:4_Neg,FA 28:3;O_Neg,PC 40:0_Neg,FA 20:5_Neg,PC 36:4|PC 18:2_18:2_Neg,LPC 17:1_Neg,HexCer 42:2;3O_Neg,LPE O-14:1_Neg,PC O-35:3;O_Neg,LPC 18:3_Neg,PE 36:4|PE 18:2_18:2_Neg,PE 39:6|PE 17:0_22:6_Neg,Cer 38:1;2O|Cer 18:1;2O/20:0_Neg,LPE 18:0_Neg)
can be utilized as the input for prediction of being a GC sample.

The code was in predict_LDA.R

2.For subtyping,
The pre-trained model was saved in the subtype_glmnet.Rds file.
The model can be read as below:

glm.mod = readRDS(file='subtype_glmnet.Rds')'

Then, any new metabolism matrix with 70 metabolites as saved in the model (colnames(glm.mod$trainingData)[-1])
can be utilized as the input for prediction of the subtypes.

The code was in subtype_glmnet.R
