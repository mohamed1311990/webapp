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
                      sh 'env.user_idd = "${BUILD_USER}"'
                      //echo "${env.user_idd}"
                  }
               } 
            }
        }
    }
}
