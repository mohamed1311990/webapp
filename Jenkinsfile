pipeline {
    environment {
        user_id="blank"
    }
    agent any
    
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) {   
                  script {
                      env.user_idd = sh 'echo "${BUILD_USER}"'
                      //echo "${env.user_idd}"
                  }
               } 
            }
        }
    }
}
