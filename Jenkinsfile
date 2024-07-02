pipeline {
    agent any
    tools{
        maven 'mvn'
    }
    stages{
        stage('Build Maven'){
            steps{
                git branch: 'main', url: 'https://github.com/Himanshu-learning/Simpli-L1b2-Docker-Jenkins-Pipeline.git'
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t himanshu2311/lab2-image-apache2 .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockercred', variable: 'dockerpwd')]) {
                   sh 'docker login -u himanshu2311 -p ${dockerpwd}'
                    }
                   sh 'docker push himanshu2311/lab2-image-apache2'
                   sh 'docker run -itd -p 81:80 himanshu2311/lab2-image-apache2:latest'
                }
            }
        }
    }
}
