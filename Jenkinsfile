 pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t rajesh-gitlab/mkdocs-docker:latest .'
                sh 'docker run rajesh-gitlab/mkdocs-docker:latest produce'
            }

        }

        stage('Test') {
            steps {
                sh 'docker load -i website.tar.gz'
                sh 'docker run -p 8000:8000 rajesh-gitlab/mkdocs-docker:latest serve'
            }
            when {
                branch 'master'
            }
        }
    }
  }
