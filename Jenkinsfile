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
      
        stage('Building our image') { 
            steps { 
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
      
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 

        stage('Cleaning up') { 
            steps { 
                sh "docker rmi $registry:$BUILD_NUMBER" 
            }
        } 
    }
}
