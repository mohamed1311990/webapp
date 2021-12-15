/* groovylint-disable EmptyCatchBlock, LineLength, NestedBlockDepth */
pipeline {
    environment {
        user_id = "mo"
    }
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) { sh 'echo "${BUILD_USER}"' }   
            }
        }
    }
}
