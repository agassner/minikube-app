pipeline {
    stages {
        stage('Test') {
            steps {
                sh "make test"
            }
        }
        stage('Build') {
            steps {
                sh "make build"
            }
        }
    }
}