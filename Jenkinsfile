pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t myweb:latest .'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker run -d --name web-container -p 8081:8080 myweb:latest'
            }
        }
    }

    post {
        success {
            echo 'WEB PROJECT BUILD SUCCESSFUL!'
        }

        failure {
            echo 'WEB PROJECT BUILD FAILED!'
        }
    }
}