FROM quay.io/pypa/manylinux1_i686:latest

COPY . /deployer

VOLUME /project

RUN yum install -y libffi-devel.i386 openssl-devel libssl-devel python-devel

CMD ["/bin/bash", "/deployer/build.sh"]
ENTRYPOINT ["/bin/bash", "/deployer/build.sh"]
