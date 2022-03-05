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
        stage('GIT Publish'){
           steps{
               sh 'git branch'
               sh 'git config --global user.email "bijudonbosco1995@gmail.com"'
               sh 'git config --global user.name "john-s21"'
               sh 'rm -rf mplan'
               sh 'git add *'
               sh 'git status'
               sh 'git checkout main'
               withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: '692f550f-1c9c-4bf5-8466-3ce164752fd0', usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD']]) {
                    sh("git push https://${env.GIT_USERNAME}:${env.GIT_PASSWORD}@aws.git")
                }
           }
        }
      }
   post {
        success{
            
            echo "SUCCESS!!!"
        }  
        failure {
            echo "Deployment Failed--Check Logs"
        }
    }
}