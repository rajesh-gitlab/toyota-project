#!/bin/bash

# Parse the command line arguments
COMMAND="$1"

# Define the produce command
produce() {
  echo "Producing the website..."
  mkdocs build --clean
  tar -czvf website.tar.gz site
  echo "Website produced!"
}

# Define the serve command
serve() {
  echo "Serving the website..."
  tar -xzvf /dev/stdin
  mkdocs serve -a 0.0.0.0:8000
}

# Execute the desired command
case $COMMAND in
  "produce")
    produce
    ;;
  "serve")
    serve
    ;;
  *)
    echo "Invalid command. Please specify 'produce' or 'serve'."
    ;;
esac
