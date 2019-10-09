FROM quay.io/pypa/manylinux1_x86_64:latest

COPY . /deployer

VOLUME /project

CMD ["/bin/bash", "/deployer/build.sh"]
ENTRYPOINT ["/bin/bash", "/deployer/build.sh"]
