pipeline {
    environment { 
        registry = "mohamed1311990/webapp" 
        registryCredential = 'Dockerhub_id' 
        dockerImage = '' 
    }
    agent any 
    stages {
        stage('git') {
            steps { git branch: 'main', url: 'https://github.com/mohamed1311990/webapp.git' 
             }
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
            steps {  sh "docker rmi $registry:$BUILD_NUMBER"  }  
            }
    
        stage('Deploy App') {
             steps {
                  sshagent(['k8s'] {
                      sh "scp -o StrictHostKeyChecking=no deployment.yaml ubuntu@localhost:/home/ubuntu"
                      script{
                          try{sh "ssh ubuntu@localhost kubectl apply -f ." }
                          catch(error){ sh "ssh ubuntu@localhost kubectl apply -f ." }     
                      }
                  }                    
              }
          }
     }
