pipeline {
  agent any
  stages {
    stage('Pre-Build') {
      parallel {
        stage('Pre-Build') {
          steps {
            sh 'echo "this is build $BUILD_NUMBER of demo $DEMO" && sleep 3'
          }
        }

        stage('Instalando Terraform') {
          steps {
            echo 'Testando terraform...'
            sh 'sleep 5'
          }
        }

        stage('stage 3') {
          steps {
            sh 'sleep 3'
          }
        }

      }
    }

    stage('Build') {
      steps {
        echo 'buildando...'
      }
    }

  }
}