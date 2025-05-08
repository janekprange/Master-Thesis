similarities = pairwise_similarities(clusters.embeddings)

averages = []
for cluster_index in range(len(clusters)):
    averages.append(mean(similarities[cluster_index]))

for cluster_index in range(len(clusters)):
    pass
