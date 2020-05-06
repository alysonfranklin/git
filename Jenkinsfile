pipeline {
  agent any
  stages {
    stage('Pre-Build') {
      parallel {
        stage('Pre-Build') {
          steps {
            sh 'echo "this is build $BUILD_NUMBER of demo $DEMO"'
          }
        }

        stage('Instalando Terraform') {
          steps {
            echo 'Testando terraform...'
          }
        }

      }
    }

  }
}