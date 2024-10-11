pipeline {
    agent any

    stages {
        stage('Deploy Script') {
            input {
                message "Shall we deploy to production?"
                ok "Yes please"
            }
            steps {
                script {
                    // Run the SSH command using sshpass
                    sh """
                    sshpass -p '1999' ssh -o StrictHostKeyChecking=no lucky@192.168.29.167 'echo 1999 | sudo -S bash /home/lucky/Desktop/django_project/scripts/deploy.sh'
                    """
                }
            }
        }
    }
}
