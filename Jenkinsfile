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
                sh 'sudo docker login -u ${DOCKER_LOGIN_USR} -p{DOCKER_LOGIN_PSW}'
                sh 'sudo docker-compose push'
            }
        }
    }
}
