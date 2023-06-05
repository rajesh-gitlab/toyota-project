# toyota-project

## Usage

1. Build the Docker image:
docker build -t rajesh-gitlab/toyota-project:latest .

2. Produce the website:
docker run -v /Users/rajeshtokala/Documents/Git/Mkdocs:/app rajesh-gitlab/toyota-project:latest produce

This will create a `.tar.gz` file named `website.tar.gz` in the current directory, containing the static website.

3. Serve the website:
docker run -p 8000:8000 -v /Users/rajeshtokala/Documents/Git/Mkdocs/website.tar.gz:/dev/stdin rajesh-gitlab/toyota-project:latest serve

Now, browse the website at [http://localhost:8000](http://localhost:8000).





