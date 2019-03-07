pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('docker build') {
            steps {
                
                script{
                    docker.build("firstt:1")
                }
                
            }
        }
    }
}
