/* groovylint-disable EmptyCatchBlock, LineLength, NestedBlockDepth */
pipeline {
    environment {
        user_id = ""
       
    }
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) { sh '$user_id2 = echo "${BUILD_USER}"' }   
               echo "$user_id"
            }
        }
    }
}
