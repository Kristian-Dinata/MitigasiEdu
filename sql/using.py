# Searches database popularity of a problem

import csv

from cs50 import SQL

# Open database
db = SQL("sqlite:///data.db")

# Prompt user for favorite
data = input("Favorite: ")

# Search for title
rows = db.execute("SELECT COUNT(*) AS n FROM data WHERE problem LIKE ?", data)

# Get first (and only) row
row = rows[0]

# Print popularity
print(row["n"])
