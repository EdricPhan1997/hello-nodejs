pipeline {
    agent any

    stages {
        stage('Clone Task') {
            steps {
                echo 'Building.. !!!'
            }
        }
         stage('Build Task') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hubs', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t EdricPhan/docker-node:v10 .'
                    sh 'docker push -t EdricPhan/docker-node:v10'                   
            }
            }
        }
       
    }
}