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
        // Construire l'image Docker
        script {
          sh 'docker build -t myapp:test .'
        }
      }
    }

    stage('Unit Tests') {
      steps {
        // Exécuter les tests unitaires
        script {
          sh 'docker run --rm myapp:test python -m unittest discover'
        }
      }
    }
  }
}
