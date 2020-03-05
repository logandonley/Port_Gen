pipeline {
  agent {
        kubernetes {
          label 'perl-pod-1'
          yamlFile 'perl-pod.yaml'
        }
      }
  options { 
    buildDiscarder(logRotator(numToKeepStr: '2'))
    skipDefaultCheckout true
  }
  stages {
    stage('Test') {
      steps {
        checkout scm
        container('perl') {
          echo 'Hello World!'   
          sh 'perl --version'
        }
      }
    }
    stage('Build and Push Image') {
      when {
         beforeAgent true
         branch 'master'
      }
      steps {
         echo "TODO - build and push image"
      }
    }
  }
}
