pipeline {
  agent any
  tools {
    terraform "Terraform"
  }
  stages {
    stage('Clone'){
      steps{
        git 'https://github.com/thuanale/jenkinslab.git'
      }
    }
    stage('Init'){
      steps{
        sh 'terraform init'
      }
    }
    stage('Format'){
      steps{
        sh 'terraform fmt'
      }
    }
    stage('Validate'){
      steps{
        sh 'terraform validate'
      }
    }
    stage('Plan'){
      steps{
        sh 'terraform plan'
      }
    }
    stage('Apply'){
      steps{
        sh 'terraform apply'
      }
    }
  }
}