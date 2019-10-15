FROM quay.io/pypa/manylinux1_x86_64:latest

COPY . /deployer

VOLUME /project

RUN yum install -y libffi-devel.x86_64

CMD ["/bin/bash", "/deployer/build.sh"]
ENTRYPOINT ["/bin/bash", "/deployer/build.sh"]
