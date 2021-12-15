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
                   sh 'echo "${BUILD_USER}"' 
               } 
                echo "${env.user_id}"
            }
        }
    }
}
