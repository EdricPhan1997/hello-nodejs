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
                    sh label: '', script: 'docker build -t EdricPhan/nodejs-test:v10 .'
                    sh label: '', script: 'docker push -t EdricPhan/nodejs-test:v10'                   
                }
            }
         }
       
    }
}