pipeline {
    agent any
    environment {
        DOCKER_LOGIN=credentials('DOCKER_LOGIN')
    }
    stages {
        stage('Deploy image') {
            steps {
                sh 'sudo docker-compose up --build -d'
            }
        }
        stage('push image') {
            steps {
                sh 'cat ~/password.txt | sudo docker login -u ${DOCKER_LOGIN_USR} --password-stdin'
                sh 'sudo docker-compose push'
            }
        }
    }
}
