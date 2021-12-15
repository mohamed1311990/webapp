/* groovylint-disable EmptyCatchBlock, LineLength, NestedBlockDepth */
pipeline {
    environment {
        registry = "mohamed1311990/webapp"
        registryCredential = 'Dockerhub_id'
        dockerImage = ''
    }
    agent any
    stages
    {
        stage('display user id ') {
            steps {  
                sh 'echo ${BUILD_USER}' 
            }
        }
    }
}
