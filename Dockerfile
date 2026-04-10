pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                // This builds the image and tags it with the build number
                sh "docker build -t my-web-app:build-${BUILD_NUMBER} ."
            }
        }
        stage('Verify Image') {
            steps {
                // List the images to prove it was created
                sh "docker images | grep my-web-app"
            }
        }
    }
}
