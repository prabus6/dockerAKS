pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/prabus6/dockerAKS.git'
            }
        }

       stage('Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t prabus6/my-redis-container .'
                }
            }
        }
        stage("Push Image to Docker HUB"){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u prabus6 -p ${dockerhubpwd}'
}
                    sh 'docker push prabus6/my-redis-container:latest'
                }
            }
        }
    }
}