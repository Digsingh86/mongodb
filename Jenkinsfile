pipeline {
    agent any
        parameters {
           choice choices: ['apply', 'destroy'], description: 'Do you want to perform Terraform Apply or Destroy?', name: 'action'
        }
        options {
           buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '10', numToKeepStr: '5')
        }
    stages {
        stage('get code from source code') {
            steps {
               git branch: 'main', credentialsId: '727906dc-b81e-4178-81de-4e53a5ff6689', url: 'https://github.com/Digsingh86/mongodb-tool.git'
            }
        }
        stage('terraform init'){
            steps {
                 sh 'terraform init'
            }
        }
        stage('terraform validate'){
            steps {
             sh 'terraform validate'
            }
        }
        stage('terraform plan'){
            steps {
             sh 'terraform plan'
            }
        }
        stage('terraform action'){
            steps {
             echo "terraform action is --> ${action}"
             input 'Do you want to proceed ? '
             sh 'terraform ${action} --auto-approve'
            }
        }
    }
}


