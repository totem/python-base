FROM ubuntu:trusty
 
RUN apt-get update --fix-missing && \ 
    apt-get install -y curl git-core openssl libssl-dev unzip ca-certificates python3 python3-dev python3-pip libevent1-dev libffi-dev && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["python3"]
CMD ["--version"]
