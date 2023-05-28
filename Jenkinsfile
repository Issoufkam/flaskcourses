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
                script {
                    def imageName = "monapp:latest"
                    def dockerfile = 'Dockerfile'

                    // Construction de l'image Docker
                    docker.withRegistry('') {
                        def dockerImage = docker.build(imageName, "-f ${dockerfile} .")

                        // Tag de l'image avec le numéro de version du pipeline
                        dockerImage.tag("${monapp}-${env.BUILD_NUMBER}")
                    }
                }
            }
        }

        stage('Publish Docker Image') {
            steps {
                script {
                    def imageName = "monapp:latest"

                    // Publication de l'image Docker
                    docker.withRegistry('', '') {
                        def dockerImage = docker.image(monapp)

                        // Publication de l'image avec le numéro de version du pipeline
                        dockerImage.push("${monapp}-${env.BUILD_NUMBER}")
                    }
                }
            }
        }
    }
}
