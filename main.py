import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Load the gym data
df = pd.read_csv("gym.csv")

# Rename the busyness column for easier access
df = df.rename(columns={"Busyness(Low, Medium, High)": "Busyness"})

# Cross-tabulate: Time Block (bins) vs Congestion (Busyness)
time_order = ["Morning", "Noon", "Evening"]
busyness_order = ["Low", "Medium", "High"]
counts = pd.crosstab(df["Time Block"], df["Busyness"]).reindex(
    index=time_order, columns=busyness_order, fill_value=0
)

# Create grouped bar chart
fig, ax = plt.subplots(figsize=(8, 5))
x = np.arange(len(time_order))
width = 0.25

bars1 = ax.bar(x - width, counts["Low"], width, label="Low", color="#2ecc71", edgecolor="black")
bars2 = ax.bar(x, counts["Medium"], width, label="Medium", color="#f39c12", edgecolor="black")
bars3 = ax.bar(x + width, counts["High"], width, label="High", color="#e74c3c", edgecolor="black")

ax.set_ylabel("Count")
ax.set_xlabel("Time Block")
ax.set_title("Gym Congestion by Time Block")
ax.set_xticks(x)
ax.set_xticklabels(time_order)
ax.legend()
ax.set_axisbelow(True)
ax.yaxis.grid(True, linestyle="--", alpha=0.7)
plt.tight_layout()
plt.show()
