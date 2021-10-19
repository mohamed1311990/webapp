#docker run -p 8080:8080 -u root -v "host-path":/var/jenkins_home --name=jenkins-master jenkins/jenkins
FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
