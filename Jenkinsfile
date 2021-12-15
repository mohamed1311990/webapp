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
                   //   sh 'echo "${BUILD_USER}"'        
                   env.user_id =  ${BUILD_USER}
                   // echo "${env.user_id}"
                  }
                 /*  sh 'echo "${BUILD_USER}"' */            
               } 
            }
        }
    }
}
