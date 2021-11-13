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
        stage('test app') {
            steps {
               script {
                 sh "ansible-playbook Ansible/site.yml -i staging"
               }
            }
        }
        stage('build app') {
            steps {
               script {
               }
            }
        }
        stage('build image') {
            steps {
                script {
                }
            }
        }
        stage('deploy image') {
            steps {
                script {
                }
            }
        }
    }
}

