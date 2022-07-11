pipeline {
  environment {
    registry = "shaposhnikoff/docker-test"
    registryCredential = "ed464724-bd9c-4a6e-834f-164d7880ab77"
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/shaposhnikoff/buildx_build.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
