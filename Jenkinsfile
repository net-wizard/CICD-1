 pipeline {
        agent any
        parameters {
            string(name: 'myInput', description: 'Some pipeline parameters')
        }
        stages {
            stage('Fetch code') {
                steps {
                    script {
                        git 'https://github.com/net-wizard/my-portfolio.git'
                    }
                }
            }
            stage('Handle existing docker image') {
                steps {
                    script {
                        sh '''docker stop $(docker ps -a -q)'''
                        sh '''docker rmi portfolio-app'''
                    }
                }
            }
            stage('Building docker') {
                steps {
                    script {
                        sh '''docker build . -t portfolio-app'''
                        sh '''docker run --rm -d -p 80:8000 portfolio-app'''
                    }
                }
            }
        }
    }
