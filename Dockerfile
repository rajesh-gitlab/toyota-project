FROM python:3.8

# Install Mkdocs
RUN pip install mkdocs

# Set up the working directory
WORKDIR /app

# Copy the necessary files
COPY --chown=root:root mkdockerize.sh .
COPY mkdocs.yml .
COPY docs/ ./docs

# Grant execution permissions to the script
RUN chmod +x mkdockerize.sh

# Expose port 8000
EXPOSE 8000

# Define the entrypoint to handle the commands
ENTRYPOINT ["/bin/bash", "/app/mkdockerize.sh"]
