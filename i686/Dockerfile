FROM quay.io/pypa/manylinux1_i686:latest

COPY . /deployer

VOLUME /project

CMD ["/bin/bash", "/deployer/build.sh"]
ENTRYPOINT ["/bin/bash", "/deployer/build.sh"]
