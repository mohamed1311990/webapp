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
                   sh '${user_id} == echo "${BUILD_USER}"' 
                    
               } 
            }
        }
    }
}
