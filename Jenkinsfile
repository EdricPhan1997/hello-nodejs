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
               script {
                 withDockerRegistry(credentialsId: 'docker-hubs', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t EdricPhan/nodejs-test:v10 .'
                    sh 'docker push -t EdricPhan/nodejs-test:v10'                   
                }
               }
            }
         }
       
    }
}