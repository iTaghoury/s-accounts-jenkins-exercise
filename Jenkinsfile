pipeline {
  agent any
  triggers {
    pollSCM('* * * * *')
  }
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
        sh "mvn clean deploy -DmuleDeploy -DaltDeploymentRepository=myinternalrepo::default::file:///C:/temp/snapshots"
      }
    }
  }
}