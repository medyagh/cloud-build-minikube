FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl socat
RUN curl -LO https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz && \
    tar zxfv docker-19.03.9.tgz && \
    cp docker/docker /usr/local/bin
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    cp kubectl /usr/local/bin
RUN curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.8.1/kind-linux-amd64 && \
    chmod +x ./kind && \
    cp kind /usr/local/bin