#######---- Import R packages -----

# import needed R package for Borda method and CEMC
#install.packages("TopKLists")
library(TopKLists)
#install.packages("rstudioapi")
library(rstudioapi)

# set random number seed
set.seed(4568)



#######---- Load working data  -----

# Get the full file path of the currently opened R script where the data is also saved
script_path <- dirname(rstudioapi::getSourceEditorContext()$path)
print(paste("The current script is located at:", script_path))
setwd(script_path)

# Load the CSV file of the DTW Morris GSA reults
data_1 = read.csv("ex2_MirobialKinetics_all_cleanforTopKLists.csv", row.names = 1, header= FALSE)



#######---- Borda Method -----
outBorda1=Borda(data_1,space=data_1) #top-k spaces
# print Borda results TopK:
print(outBorda1$TopK)
# print Borda results Scores:
print(outBorda1$Scores)




#######---- Cross Entropy Monte Carlo/CEMC Method  -----
outCEMC1=CEMC(data_1,space=data_1)
# print CEMC results TopK:
print(outCEMC1$TopK)
# print CEMS results Scores:
print(outCEMC1$ProbMatrix)


