pipeline {
  environment {
    registry = "${registry}"
    registryCredential = "ed464724-bd9c-4a6e-834f-164d7880ab77"
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git url: "https://github.com/shaposhnikoff/buildx_build.git",
            branch: "${GIT_BRANCH.split("/")[1]}"
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER" 
        }
      }
    }
    stage('Deploy Image') {
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
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
