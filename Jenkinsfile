pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Install Flutter Dependencies') {
            steps {
                echo 'Getting Flutter packages...'
                bat 'flutter pub get'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests...'
                bat 'flutter test'
            }
        }

        stage('Build APK') {
            steps {
                echo 'Building Flutter APK...'
                bat 'flutter build apk'
            }
        }
    }

    post {
        success {
            echo '✅ Build completed successfully!'
        }
        failure {
            echo '❌ Build failed!'
        }
    }
}
