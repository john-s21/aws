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
        stage('Terraform Initialization') {
            steps {
               sh 'terraform init'
            }
        }
        stage('Terraform Validation') {
            steps {
               sh 'terraform validate'
            }
        }
        stage('Terraform Planing') {
            steps {
               sh 'terraform plan -out sbi'
            }
        }
        stage('Terraform Formatting'){
           steps{
               sh 'terraform fmt'
           }
        }
      }
   post {
        success{
            sh 'rm -rf mplan'
            sh 'git status'
            sh 'git checkout main'
            sh 'git branch'
            sh 'git add *'
            sh 'git commit -m "let try again'
            sh 'git push -u origin main'
        }  
        failure {
            echo "Deployment Failed--Check Logs"
        }
    }
}