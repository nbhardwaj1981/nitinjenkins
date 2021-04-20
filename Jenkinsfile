pipeline {
    parameters {
        string(name: 'environment', defaultValue: 'terraform', description: 'Workspace environment file to use for deployment')
        booleanParam(name: 'autoApprove',defaultValue: false, description: 'automatically run apply after generating plan?')
    }

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials ('AWS_SECRET_ACCESS_KEY')
    }
  agent any
        options {
            timestamp()
            ansicolor('xterm')
        }
 stages {
     stage('checkout') {
         steps {
             script{
                 git "https://github.com/gopal1409/terraformjenkinshcl.git"
             }
         }
     }
 }

}