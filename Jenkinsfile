 pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t rajesh-gitlab/toyota-project:latest .'
                sh 'docker run -v /Users/rajeshtokala/Documents/Git/Mkdocs:/app rajesh-gitlab/toyota-project:latest produce'
            }

        }

        stage('Test') {
            steps {
                sh 'docker run -p 8000:8000 -v /Users/rajeshtokala/Documents/Git/Mkdocs/website.tar.gz:/dev/stdin rajesh-gitlab/toyota-project:latest serve'
            }
            when {
                branch 'master'
            }
        }
    }
  }
