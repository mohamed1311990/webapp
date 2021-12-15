pipeline {
    environment {
        user_id = ' '
    }
    agent any
    
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) {   
                  script {
                    env.user_id =  sh 'echo "${BUILD_USER}"'
                    echo "${env.user_id}"
                  }
                 /*  sh 'echo "${BUILD_USER}"' */            
               } 
            }
        }
    }
}
