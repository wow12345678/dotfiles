#!/bin/bash

query="$1"
if [[ "$query" == \?\?* ]]; then
	search_query="${query:2}"
	xdg-open "https://www.google.com/search?q=$search_query"
else
	# Default behavior: run the command
	$query
fi
