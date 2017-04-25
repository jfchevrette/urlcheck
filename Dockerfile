FROM centos:7

RUN set -x && \
    yum -y install curl && \
    yum clean all

COPY run.sh /

CMD ["/run.sh"]
