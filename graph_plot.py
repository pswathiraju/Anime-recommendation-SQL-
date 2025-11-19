import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV exported from MySQL
df = pd.read_csv("top_rated_anime.csv")

# Print to verify
print(df.head())

# Create a bar graph
plt.figure(figsize=(10, 6))
plt.bar(df['title'], df['avg_rating'])

plt.xlabel("Anime Title")
plt.ylabel("Average Rating")
plt.title("Top Rated Anime")
plt.xticks(rotation=45)
plt.tight_layout()

# Save the plot as image
plt.savefig("anime_ratings_graph.png")

# Show the graph
plt.show()
