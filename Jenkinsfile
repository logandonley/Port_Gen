pipeline {
  agent {
        kubernetes {
          label 'perl-pod-1'
          yamlFile 'perl-pod.yaml'
        }
      }
  //triggers{ cron('H/15 * * * *') }
  options { 
    buildDiscarder(logRotator(numToKeepStr: '2'))
    skipDefaultCheckout true
  }
  stages {
    stage('Test') {
      steps {
        checkout scm
        container('perl') {
          sh 'perl simple.pl'
          sh 'perl --version'
        }
      }
    }
  }
}
