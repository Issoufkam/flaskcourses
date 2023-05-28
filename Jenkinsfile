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
                    def imageName = "flaskcourses:latest"
                    def dockerfile = 'Dockerfile'

                    // Construction de l'image Docker
                    docker.withRegistry('') {
                        def dockerImage = docker.build(imageName, "-f ${dockerfile} .")

                        // Tag de l'image avec le numéro de version du pipeline
                        dockerImage.tag("${imageName}-${env.BUILD_NUMBER}")
                    }
                }
            }
        }

        stage('Publish Docker Image') {
            steps {
                script {
                    def imageName = "flaskcourses:latest"

                    // Publication de l'image Docker
                    docker.withRegistry('', '') {
                        def dockerImage = docker.image(imageName)

                        // Publication de l'image avec le numéro de version du pipeline
                        dockerImage.push("${imageName}-${env.BUILD_NUMBER}")
                    }
                }
            }
        }
    }
}
