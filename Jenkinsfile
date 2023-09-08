
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
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']) {
                    sh "curl -O https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py"
                }
            }
        }
        stage('Test') {
            steps {
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin','PATH="$PATH":"$HOME/.pub-cache/bin']) {
                    sh "dart pub global activate melos"
                    sh "chmod +x test_coverage.sh"
                    sh "sh test_coverage.sh"
                }
            }
        }
    }
}