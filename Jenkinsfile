pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
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
                    docker.build("rebate:1")
                }
                
            }
        }
    }
}
