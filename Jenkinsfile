pipeline {
    agent any

    stages {
        stage('SCM git cloneing') {
            steps {
                git 'https://github.com/Rahulchallagundla/Maven-web-app.git'
            }
        }
         stage('code compling') {
            steps {
                sh 'mvn compile'
            }
        }
         stage('code testing') {
            steps {
                sh 'mvn test'
            }
        }
         stage('code packageing') {
            steps {
                sh 'mvn package'
            }
        }
        stage('deply into tomcat server') {
            steps {
                deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat-CRD', path: '', url: 'http://65.0.251.144:8080/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
