pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Cloner le référentiel Git
                git branch: 'main', url: 'https://github.com/Issoufkam/flaskcourses.git'
            }
        }
        

        stage('Install dependencies') {
            steps {
                // Installer les dépendances Python avec pip
                sh 'pip3 install -r requirements.txt'
            }
        }

        

        

        stage('Build') {
            agent {
                docker {
                    image 'python:3-alpine'
                }
            }
            steps {
                // Exécuter des étapes de construction supplémentaires si nécessaire
                // Par exemple, pour construire un package ou un exécutable
                
                sh 'python3 setup.py build'
            }
        }

        stage('Publish') {
            steps {
                // Publier ou distribuer votre application
                // Par exemple, pour publier sur PyPI
                sh 'python3 setup.py sdist upload -r pypi'
            }
        }

        stage('Cleanup') {
            steps {
                // Nettoyer après le déploiement ou la distribution
                // Par exemple, supprimer les fichiers temporaires ou les artefacts de construction
                sh 'rm -rf build dist'
            }
        }
    }
}
