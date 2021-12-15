/* groovylint-disable EmptyCatchBlock, LineLength, NestedBlockDepth */
pipeline {
    environment{
        user_id = wrap([$class: 'BuildUser']) { sh 'echo "${BUILD_USER}"' }   

    }
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
                echo "$user_id"
            }
        }
    }
}
