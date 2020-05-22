pipeline {
  agent {
    label 'jnlpslave'
  }
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Build') {
      steps {
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
