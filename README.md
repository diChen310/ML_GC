# ML_GC
A machine learning model for predict  cancer and health samples

The pre-trained model was saved in the bestLDA.Rds file. 
The model can be read as below:

lda.mod = readRds('./bestLDA.Rds')

Then, any new metabolism matrix with the 31 metabolites
(LPC 17:0, SM 30:1;2O|SM 16:1;2O/14:0, LPE O-16:1, PE O-44:6|PE O-24:2_20:4, FA 44:11, 
LPC 20:0, CAR 14:0, PE O-37:7|PE O-15:1_22:6, Cer 39:1;2O|Cer 17:1;2O/22:0, 
CL 78:7|CL 24:0_18:2_18:2_18:3, PC O-35:4, HexCer 42:2;2O|HexCer 18:1;2O/24:1, FA 28:3;O, 
PC 40:0, FA 20:5, PE O-38:6|PE O-16:1_22:5, PC 36:4|PC 18:2_18:2, LPC 17:1, 
HexCer 42:2;3O_iso2, LPE O-14:1, PC 38:6|PC 18:2_20:4, CL 76:3|CL 18:0_18:0_18:0_22:3, 
LPC 18:3, PC 42:6, PE 36:4|PE 18:2_18:2, CAR 18:1, SM 38:1;2O, PE 39:6|PE 17:0_22:6,
Cer 38:1;2O|Cer 18:1;2O/20:0, SM 35:2;2Oand LPE 18:0)
can be utilized as the input for prediction of being a GC sample.

The code was in predict_LDA.R
