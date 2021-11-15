#!/usr/bin/env groovy
@Library('sharedl')_
pipeline {
    agent any
    stages {
        stage("init"){
          steps{
            script{
              dockerLogin("http://192.168.122.41:8082","docker-cred")
            }

          }
        }
        stage('building app') {
            steps {
               script {
                 sh "echo \"dockerpath: ${env.WORKSPACE} \" > Ansible/group_vars/all"
                 sh " sudo ansible-playbook Ansible/site.yml -i staging -vvv"
               }
            }
        }
    }
}

