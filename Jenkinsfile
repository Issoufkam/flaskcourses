pipeline {
    agent any

    stages {
        stage('Build Docker image') {
            steps {
                script {
                    def dockerImage = docker.build('my-flask-app:latest', '-f Dockerfile .')
                    dockerImage.push()
                }
            }
        }

        // Add more stages for additional steps in your CI/CD pipeline
    }
}
