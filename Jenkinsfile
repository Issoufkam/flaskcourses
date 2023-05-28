pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t mon-image:latest .'
            }
        }

        stage('Push to Registry') {
            steps {
                sh 'docker push mon-image:latest'
            }
        }

        // Ajoutez d'autres étapes de votre pipeline CI/CD ici
    }
}
