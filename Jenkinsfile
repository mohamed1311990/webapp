pipeline {
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) {
                    temp = sh '${BUILD_USER}' 
                    echo "${temp}"
               }   
            }
        }
    }
}
