pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh "docker build -t my-web-app:latest ."
            }
        }
        stage('Check Image') {
            steps {
                sh "docker images | grep my-web-app"
            }
        }
    }
}
