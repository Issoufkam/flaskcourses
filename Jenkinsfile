pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Cloner le référentiel Git
                git branch: 'main', url: 'https://github.com/Issoufkam/flaskcourses.git'
            }
        }
        
        stage('Install Python') {
            steps {
                // Installer Python
                sh 'sudo apt-get update'
                sh 'sudo apt-get install -y python3'
                sh 'sudo apt-get install -y python3-pip'
            }
        }
        
        stage('Install dependencies') {
            steps {
                // Installer les dépendances Python
                sh 'pip3 install -r requirements.txt'
            }
        }
        
        stage('Run Python script') {
            steps {
                // Exécuter le script Python
                sh 'python3 path/to/your_script.py'
            }
        }
        
        // Autres étapes de votre pipeline...
        
        stage('Cleanup') {
            steps {
                // Nettoyer après l'exécution du pipeline
            }
        }
    }
}
