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
        sh "mvn clean deploy -DmuleDeploy -Denv=test -Du=iTaghoury2 -Dp=vq36U!Yx4ud\$mfZ -DaltDeploymentRepository=myinternalrepo::default::file:///C:/temp/snapshots"
      }
    }
  }
}