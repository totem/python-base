FROM ubuntu:trusty

RUN apt-get update --fix-missing && \
    apt-get install -y curl git-core openssl libssl-dev unzip ca-certificates python python-dev libevent1-dev libffi-dev && \
    curl -s -q "https://bootstrap.pypa.io/get-pip.py" | python && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["python"]
CMD ["--version"]
