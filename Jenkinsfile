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
               wrap([$class: 'BuildUser']) { sh '$user_id = echo "${BUILD_USER}"' }   
               echo "$user_id"
            }
        }
    }
}
