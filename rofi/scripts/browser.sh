#!/bin/bash

# Get the query from user input
query="$1"

# Check if the query starts with "!g"
if [[ "$query" == "!g"* ]]; then
	# Extract the search query (remove "!g" from the beginning)
	search_query="${query:3}"

	# Encode the search query for URL
	encoded_query=$(echo "$search_query" | sed 's/ /+/g')

	# Open the browser with the Google search
	xdg-open "https://www.google.com/search?q=$encoded_query" >/dev/null 2>&1
else
	echo "Invalid query. Please start your query with '!g'."
fi
