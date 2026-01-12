pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
                // Create a dummy file to simulate a build artifact (like a compiled app)
                sh 'echo "This is version 1.0 of Om app" > build-artifact.txt'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running Unit Tests...'
                // Run the Python script we created earlier
                sh 'python3 app.py'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying to Staging...'
                sh 'sleep 2' // Simulates time taken to deploy
            }
        }
    }

    // Advanced Feature: Artifact Management & Notifications
    post {
        always {
            // Archive the artifact so it can be downloaded from Jenkins UI
            archiveArtifacts artifacts: 'build-artifact.txt', fingerprint: true
            echo 'Pipeline execution complete.'
        }
        success {
            echo 'SUCCESS: Good job Om, the build passed!'
        }
        failure {
            echo 'FAILURE: something went wrong.'
        }
    }
}
