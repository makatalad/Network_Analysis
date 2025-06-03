library(igraph)

trial <- read.table("Boba_Data.csv", sep = ",", header = TRUE)

trial <- as.matrix(trial)



boba <- graph_from_biadjacency_matrix(trial)

V(g)$label <- V(g)$name

plot(boba, vertex.label.cex = .6, vertex.label = V(g)$label)