pipeline {
  agent {
    label 'testslave'
  }
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm run build' 
      }
    }
    stage('Test') {
      steps {
        sh 'npm run test'
      }
    }
    stage('Done') {
      steps {
        echo 'All Done!!'
      }
    }
  }
}
