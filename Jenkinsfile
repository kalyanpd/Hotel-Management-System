pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/kalyanpd/Hotel-Management-System.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t hotel-management .'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests (if available)"'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d --build'
            }
        }
    }
}

