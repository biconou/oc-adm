#docker build --rm -t test-centos .
#docker run -i --rm -v /mnt/DATA:/mnt/DATA test-centos

FROM centos:centos7

USER root

COPY test.sh .

RUN mkdir /mnt/DATA; chmod 777 test.sh

CMD ["./test.sh"]