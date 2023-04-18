pipeline {
  agent any

  stages {
    stage('accounts') {
      steps {
        echo "Getting accounts..."
      }
    }
    stage('deploy') {
      steps {
        echo "Deploying to cloudhub..."
        sh 'mvn clean package deploy -DmuleDeploy'
      }
    }
  }
}