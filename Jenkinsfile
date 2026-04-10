pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                // This creates your image
                sh "docker build -t my-web-app:latest ."
            }
        }
        stage('Check Image') {
            steps {
                // This confirms the image exists in your WSL
                sh "docker images | grep my-web-app"
            }
        }
    }
}
