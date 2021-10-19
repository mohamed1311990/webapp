pipeline {
    environment { 
        registry = "mohamed1311990/webapp" 
        registryCredential = 'Dockerhub_id' 
        dockerImage = '' 
    }
    agent any 
    stages {
        stage('git') {
            steps { git branch: 'main', url: 'https://github.com/mohamed1311990/webapp.git' }
        }
    }
}
