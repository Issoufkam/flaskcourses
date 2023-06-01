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
    
    stage('Package Artifact') {
      steps {
        sh 'docker build -t myapp:test .' // Construire l'image Docker de l'application avec le tag 'test'
        sh 'docker save myapp:test > myapp-test.tar' // Enregistrer l'image Docker dans un fichier tar
        archiveArtifacts 'myapp-test.tar' // Archiver l'artefact pour le déploiement ultérieur
      }
    }
    
  }
}
