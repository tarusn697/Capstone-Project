pipeline {
    agent any
    stages {
        stage('Docker Build') {
          steps {
      	    sh 'docker build -t taruns697/dev:v1 .'
          }
        }
        stage('Docker Push') {
          steps {
      	    withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
              sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
              sh 'docker push taruns697/dev:v1'
          }
        }
        stage('Docker compose up') {
          steps {
      	    sh 'docker compose up -d'
          }
        }
    }
}
