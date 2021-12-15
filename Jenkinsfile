/* groovylint-disable EmptyCatchBlock, LineLength, NestedBlockDepth */
pipeline {
   parameters {
        string(name: 'user_id', defaultValue: '')
   }
    agent any
    stages
    {
        stage('display user id ') {
            steps { 
               wrap([$class: 'BuildUser']) {
                   temp = sh 'echo "${BUILD_USER}"' 
               }   
               env.user_id = temp
               echo "${env.user_id}"
            }
        }
    }
}
