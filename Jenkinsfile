pipeline {
  agent any
  triggers {
    pollSCM('* * * * *')
  }
  environment {
    ENV = 'Test'
    APP = "${ENV}-jenkins-app"
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
        sh "mvn clean deploy -DmuleDeploy -Denv=${ENV} -Du=iTaghoury2 -Dp=Y@Rnr@gbnmhus3Z -DappName=${APP}"
      }
    }
  }
}