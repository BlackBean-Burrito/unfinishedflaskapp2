pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                sh 'sudo docker build -t BlackBeanBurrito/qa_flask'
            }
        }
        stage('Deploy container') {
            steps {
                sh 'sudo docker run -dp 5000:5000 --name qa_flask_app BlackBeanBurrito/qa_flask'
            }
        }
    }
}
