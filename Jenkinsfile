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
                   sh ' ${env.user_id} = echo "${BUILD_USER}"' 
                   
               } 
                echo "${env.user_id}"
            }
        }
    }
}
