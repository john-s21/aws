node{
   stage('GIT Checkout'){
     git 'https://github.com/john-s21/AWS-BUILD.git'
     sh 'echo GIT pull success! '
   }
   stage('Terraform Initialize'){
      sh 'terraform init '
      sh 'terraform validate'
   }
   stage('Terraform Code formating'){
      sh 'terraform fmt'
   }
}
