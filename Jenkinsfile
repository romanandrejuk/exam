pipeline {
  environment {
    registry = "andrejukr/exam"
    registryCredential = 'docker'
    dockerImage = 'andrejukr/exam'
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/romanandrejuk/exam.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$PROMOTED_JOB_NAME"
        }
      }
    }
    stage('Deploying Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$PROMOTED_JOB_NAME"
      }
    }
  }
}
