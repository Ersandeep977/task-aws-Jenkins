pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Ersandeep977/task-aws-Jenkins.git'
            }
        }
        stage('Build and Run Application') {
            steps {
                script {
                    sh 'chmod +x word_count.sh' // Make the script executable
                    sh './word_count.sh' // Run the script
                }
            }
        }
    }
}
