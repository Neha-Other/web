pipeline {
    agent any

    tools {
        maven 'MAVEN'
    }

    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t mavenweb .'
            }
        }
    }
}
