node{
   stage('GIT REPO CHECKOUT'){
    git 'https://github.com/lightning-incorp/alphaA.git'
    sh 'echo GIT pull success! '
   }
   stage('PRE ENVIRONMENT INSTALLATIONS'){
    sh 'sudo apt install python3-pip'
   }
}

// pipeline {
//    agent any
//       stages {
//         stage('Terraform Initialization') {
//             steps {
//                sh 'terraform init'
//             }
//         }
//         stage('Terraform Validation') {
//             steps {
//                sh 'terraform validate'
//             }
//         }
//         stage('Terraform Planing') {
//             steps {
//                sh 'terraform plan -out sbi'
//             }
//         }
//         stage('Terraform Formatting') {
//            steps{
//                sh 'terraform fmt'
//            }
//         }
//         stage('GIT Publish') {
//            steps{
//                sh 'git branch'
//             //    sh 'git config --global user.email "bijudonbosco1995@gmail.com"'
//             //    sh 'git config --global user.name "john-s21"'
//             //    sh 'rm -rf mplan'
//             //    sh 'git add *'
//             //    sh 'git status'
//             //    sh 'git checkout main'
//            }
//         }
//       }
//    post {
//         success{      
//             echo "SUCCESS!!!"
//         }  
//         failure {
//             echo "Deployment Failed"
//         }
//     }
// }