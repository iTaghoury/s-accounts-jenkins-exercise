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
        sh "git status"
        sh 'mvn clean package deploy -DmuleDeploy -DaltDeploymentRepository=myinternalrepo::default::file:///C:/temp/snapshots'
      }
    }
  }
}