#docker container run -d -p "host_port":8080 -v "host_dir":/var/jenkins_home --name jenkins-local jenkins/jenkins:lts
FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
