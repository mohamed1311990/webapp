pipeline {
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
                sh 'echo "${BUILD_USER}"' 
/*
               wrap([$class: 'BuildUser']) {
                    sh 'echo "${BUILD_USER}"' 
               } 
*/ 
            }
        }
    }
}
