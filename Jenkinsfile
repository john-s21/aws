// node{
//    stage('GIT Checkout'){
//      git 'https://github.com/john-s21/aws.git'
//      sh 'echo GIT pull success! '
//    }
//    stage('Terraform Initialize'){
//       sh 'terraform init '
//       sh 'terraform validate'
//       sh 'echo Terraform Operations are done!'
//    }
//    stage('Terraform Code formating'){
//       sh 'terraform fmt'
//    }
// }

pipeline {
   agent any
      stages {
        stage('SCM COPY FILES') {
            steps {
                sh 'echo GIT CHECKOUT done'
            }
        }
    }
   post {
        success{
            echo "Deployment Success"
        }  
        failure {
            echo "Deployment Failed--Check Logs"
        }
    }
}