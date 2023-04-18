pipeline {
  agent any
  triggers {
    pollSCM('* * * * *')
  }
  environment {
    DEPLOYMENT_ENV = ""
    APP = "${DEPLOYMENT_ENV}-jenkins-app"
  }
  stages {
    stage('accounts') {
      steps {
        echo "Getting accounts..."
      }
    }
    stage('deploy') {
      environment {
        AP_CRED = credentials('ANYPOINT_PLATFORM_CREDENTIALS')
      }
      steps {
        echo "Deploying to cloudhub..."
        echo "Building Branch: ${BRANCH_NAME}"
        script {
          if (BRANCH_NAME == 'main') {
            DEPLOYMENT_ENV = "Main"
          } else if (BRANCH_NAME == 'test') {
            DEPLOYMENT_ENV = "Test"
          }
          APP = "${DEPLOYMENT_ENV}-jenkins-app"
        }
        sh "mvn clean deploy -DmuleDeploy -Denv=${DEPLOYMENT_ENV} -Du=${AP_CRED_USR} -Dp=${AP_CRED_PSW} -DappName=${APP}"
      }
    }
  }
}