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
                    //  env.user_idd = sh '${BUILD_USER}'
                      withEnv(["user_id=sh '${BUILD_USER}'"]) {
                            echo "${env.user_id}"
                      }
                     // echo "${env.user_idd}"

                  }
               } 
            }
        }
    }
}
