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
        stage('git') {
            steps { git branch: 'main', url: 'https://github.com/mohamed1311990/webapp.git'  }
        }

        stage('Building our image') {
            steps {
                script {  dockerImage = docker.build registry + ":$BUILD_NUMBER"  }
            }
        }

        stage('Deploy our image') {
           steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
         }


        stage('Cleaning up') {
            steps {  sh "docker rmi $registry:$BUILD_NUMBER"  }
        }


        stage('Deploy to K8s')
        {
            steps{
                sshagent(['k8s-jenkins'])
                {
                    sh 'scp -r -o StrictHostKeyChecking=no deployment.yaml root@3.69.11.39:/home/mo/desktop/Devops/CICD/Jenkins/Projects'
                    script {
                        try { sh 'ssh root@3.69.11.39 kubectl apply -f /home/mo/desktop/Devops/CICD/Jenkins/Projects/deployment.yaml --kubeconfig=/root/.kube/config' }
                            catch (error) { }
                    }
                }
            }
        }
    }
}
