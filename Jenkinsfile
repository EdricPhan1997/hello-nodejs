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
                    sh 'docker build -t edricphan/test-app:1.0.0 .'
                    sh 'docker push -t edricphan/test-app:1.0.0 .'
                                     
                }
               }
            }
         }
       
    }
}