FROM centos:latest

RUN yum install -y epel-release
RUN yum install -y nginx

COPY ./ /usr/share/nginx/html/pep-docker
COPY ./nginx.conf /etc/nginx
EXPOSE 80
CMD ["nginx","-g","daemon off;"]


