
pipeline {
    agent any
    stages {
        stage ('Checkout') {
            steps {
                checkout scm
            }
        }
        stage ('Download lcov converter') {
            steps {
                sh "curl -O https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py"
            }
        }
        stage('Test') {
            steps {
                sh "dart pub global activate melos"
                sh 'export PATH="$PATH":"$HOME/.pub-cache/bin"'
                sh "chmod +x test_coverage.sh"
                sh "sh test_coverage.sh"
            }
        }
    }
}