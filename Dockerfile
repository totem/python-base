FROM totem/totem-base:trusty
 
RUN apt-get update && \
   apt-get upgrade -y && \
   apt-get install -y libevent1-dev libffi-dev && \
   apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN pip install --upgrade requests==2.6.0 && \
    easy_install -U pip

RUN pip install --upgrade urllib3==1.10.2 requests[security]==2.6.0

ENTRYPOINT ["python"]
CMD ["--version"]
