##----------------------------
##   PCA
##----------------------------

##description: this code is going to study the viability of doing a PCA on the data.


##----------------------------
##some links that might be usefull:

##http://little-book-of-r-for-multivariate-analysis.readthedocs.org/en/latest/src/multivariateanalysis.html
##----------------------------
## LIBRARIES

library(ellipse) #for correlation and plot of correlations
##----------------------------

#Standarised Data, to do a Principal Analysis Component data has to be standarised. 

standardisedData<-as.data.frame(scale(data[1:54]))

#doing a PCA with all the data

data.pca <- prcomp(standardisedData[1:54]) 
summary(data.pca)

screeplot(data.pca, type="lines")
#Doing PCA doesn't helps us taking care of the cumulative proportion. Each component bring max 0.06
#of the variance of the data. Very small percentage.
# as we can see each principal component 


### PLOTING the correlation between the 
corrSD<-cor(standardisedData)

#Standarised data
colorfun <- colorRamp(c("#CC0000","white","#3366CC"), space="Lab")
plotcorr(corrSD, col=rgb(colorfun((corrSD+1)/2), maxColorValue=255))

#in the plot we can appreciate that the variables do not have to many correlation between them.


