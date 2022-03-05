node{
   stage('GIT Checkout'){
     git 'https://github.com/john-s21/aws.git'
     sh 'echo GIT pull success! '
   }
   stage('Terraform Initialize'){
      sh 'terraform init '
      sh 'terraform validate'
      sh 'echo Terraform Operations are done!'
   }
   stage('Terraform Code formating'){
      sh 'terraform fmt'
   }
}
