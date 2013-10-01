FROM totem/ubuntu:raring
 
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget curl python python-dev python-pip git-core build-essential libevent1-dev libssl-dev

RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["python"]
CMD ["--version"]
