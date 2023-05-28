pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/Issoufkam/flaskcourses.git'
            }
        }

        stage('Build Docker image') {
            steps {
                sh 'docker build -t my-flask-app .'
            }
        }

        // Add more stages for additional steps in your CI/CD pipeline
    }
}
