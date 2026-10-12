pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build with Maven') {
            steps {
                bat 'mvn -version'
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t java-docker-app:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run --rm java-docker-app:latest'
            }
        }
    }
}