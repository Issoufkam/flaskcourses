pipeline {
    agent {
        docker {
            image 'python'
        }
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        
        stage('Test') {
            steps {
                sh 'python run_tests.py'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'python deploy.py'
            }
        }
    }
}
