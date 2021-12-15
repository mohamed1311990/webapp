pipeline {
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) {
                    sh ' temp = ${BUILD_USER}' 
               }   
               echo "${temp}"
            }
        }
    }
}
