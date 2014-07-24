FROM fedora:20

RUN yum update -y
RUN yum clean all
RUN yum install -y docker-io e2fsprogs
ADD ./with_docker_service /usr/bin/with_docker_service

VOLUME /var/lib/docker
