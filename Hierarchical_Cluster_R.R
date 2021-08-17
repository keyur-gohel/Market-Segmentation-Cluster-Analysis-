# Hirarchical (Agglomerative) Cluster

# Import Dataset
dataset = read.csv('Mall_Customers.csv')
dataset = dataset[4:5]

# Using Dendrogram to Find Optimal Number Of Clusters
dendrogram = hclust(d = dist(dataset, method = 'euclidean'), method = 'ward.D')
plot(dendrogram,
     main = 'Dendrogram',
     xlab = 'Cutomers',
     ylab = 'Euclidean Distances')

# Fitting HC (Agglomerative) to Dataset
hc = hclust(d = dist(dataset, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, 5)


# Visualising Clusters
library(cluster)
clusplot(dataset,
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = 'Clusters of Customers',
         xlab = 'Annual Income',
         ylab = 'Spending Score')
