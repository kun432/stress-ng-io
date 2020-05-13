FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y stress-ng && \
    rm -rf /var/lib/apt/lists/*

CMD ["stress-ng", "-d","1", "--hdd-bytes" ,"100M","-q"]
