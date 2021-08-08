pipeline{
  agent any
  environment {
    dockerImage = ''
    registry = 'akumar6030/rdsapp1'
    registryCredential = 'DockerHub'
  }
  stages{
    stage('Depoloy-qal') {
      steps{
        checkout([$class: 'GitSCM', branches: [[name: 'master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/akumar6030/argocd-demo.git']]])
        sh "chmod +x entry.sh"
        sh "./entry.sh ${BUILD_NUMBER}"
        sh 'git commit -am "Updating the rdsapp-depl file dynamically."'
        sh "git push -f origin master"
      }
    }
  }
}
