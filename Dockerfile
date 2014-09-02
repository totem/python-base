FROM totem/totem-base:trusty
 
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y libevent1-dev

RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["python"]
CMD ["--version"]
