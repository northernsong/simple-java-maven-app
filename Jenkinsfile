pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven:3-alpine'
                    args '-v $HOME/.m2:/root/.m2'
                }
            }
            steps {
                sh 'mvn -B -DskipTests clean install'
            }
        }
     
    }
}

node {
    checkout scm
    def customImage = docker.build("my-image:${env.BUILD_ID}")
}
