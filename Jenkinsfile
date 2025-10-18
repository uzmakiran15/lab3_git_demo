pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main',
                    credentialsId: ' myid',
                    url: 'https://github.com/uzmakiran15/lab3_git_demo'
            }
        }

        stage('Setup Flutter SDK') {
            steps {
                echo 'Setting up Flutter...'
                bat '''
                git clone https://github.com/flutter/flutter.git --branch stable
                set PATH=%CD%\\flutter\\bin;%PATH%
                flutter doctor
                '''
            }
        }

        stage('Get Dependencies') {
            steps {
                bat 'flutter pub get'
            }
        }

        stage('Analyze') {
            steps {
                bat 'flutter analyze'
            }
        }

        stage('Build APK') {
            steps {
                bat 'flutter build apk --debug'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'build/app/outputs/flutter-apk/app-debug.apk', fingerprint: true
            }
        }
    }
}
