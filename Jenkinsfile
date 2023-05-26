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
                sh 'pip install -r requirements.txt'
            }
        }



        stage('Unit tests') {
            steps {
                // Exécuter les tests unitaires avec pytest
                sh 'pytest'
            }
        }

        stage('Build') {
            steps {
                // Exécuter des étapes de construction supplémentaires si nécessaire
                // Par exemple, pour construire un package ou un exécutable
                sh 'python setup.py build'
            }
        }

        stage('Publish') {
            steps {
                // Publier ou distribuer votre application
                // Par exemple, pour publier sur PyPI
                sh 'python setup.py sdist upload -r pypi'
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
