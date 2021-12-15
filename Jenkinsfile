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
                    sh 'echo "${BUILD_USER}"' 
               } 
            }
        }
    }
}
