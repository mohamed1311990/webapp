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
                      withEnv(["user_id=${BUILD_USER}"]) {
                            echo "${env.user_id}"
                      }
                  }
               } 
               echo "${env.user_id}"

            }
        }
    }
}
