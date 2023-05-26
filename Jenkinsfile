clearpipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                // Récupère le code depuis le dépôt GitHub
                sh 'rm -rf *'
                git 'https://github.com/Issoufkam/flaskcourses.git'
            }
        }

        stage('Build') {
            steps {
                // Étape de construction, si nécessaire
                
                // Vous pouvez compiler, installer les dépendances, etc.
                sh 'pip install -r requirements.txt'
            }
        }

        //stage('Test JMeter') {
         //   steps {
                // Exécutez les tests JMeter
                // Assurez-vous d'avoir JMeter installé sur le système
                //sh 'jmeter -n -t chemin/vers/votre/test.jmx'
          //  }
       // }

        stage('Test Selenium') {
            steps {
                // Exécutez les tests Selenium
                sh 'python test_selenium.py'
                // Assurez-vous d'avoir Selenium installé et les navigateurs appropriés configurés
                // Utilisez les commandes ou les outils spécifiques à votre langage de programmation pour exécuter les tests Selenium
            }
        }

        stage('Package') {
            steps {
                // Génère l'artefact à déployer
                sh 'python setup.py sdist bdist_wheel'
            }
        }

        stage('Deploy') {
            steps {
                sh 'pip install twine'
                sh 'twine upload dist/*'
            }
        }
    }
}
