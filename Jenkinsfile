pipeline {
  agent any
  tools {
    terraform "terraform-11"
  }
  stages {
    stage('Clone'){
      steps{
        git 'https://github.com/thuanale/jenkinslab.git'
      }
    }
    stage('Init'){
      steps{
        sh label '', script: 'terraform init'
      }
    }
    stage('Format'){
      steps{
        sh label '', script: 'terraform fmt'
      }
    }
    stage('Validate'){
      steps{
        sh label '', script: 'terraform validate'
      }
    }
    stage('Plan') {
      steps{
        sh label '', script: 'terraform plan'
      }
    }
    stage('Apply') {
      steps{
        sh label '', script: 'terraform apply'
      }
    }
  }
}