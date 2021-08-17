# K - Means Clustering

# Import Dataset
dataset = read.csv('Mall_Customers.csv')
dataset = dataset[4:5]

# Using Elbow Method to Find optimal Number Of Clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number Of Clusters',
     ylab = 'WCSS')

# Fitting K - Means to Dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 5)
y_kmeans = kmeans$cluster

# Visualising Clusters
library(cluster)
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')


