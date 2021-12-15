pipeline {
    environment {
        user_id = 'test var'
    }
    agent any
    
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) {
                   sh 'echo "${user_id} ${BUILD_USER}"' 
               } 
                echo "${env.user_id}"
            }
        }
    }
}
