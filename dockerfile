#docker run -itd -p 8080:8080 -u root -v "host_path":/var/jenkins_home --name=jenkins-master jenkins/jenkins:lts
FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
