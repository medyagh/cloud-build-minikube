FROM gcr.io/k8s-minikube/kicbase:v0.0.18
RUN apt-get update && apt-get install -y curl socat
USER docker
RUN cd /tmp && curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    sudo install kubectl  /usr/local/bin/kubectl
RUN cd /tmp && curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && \
    sudo install /tmp/minikube-linux-amd64 /usr/local/bin/minikube 
ENTRYPOINT [ "/usr/local/bin/minikube" ]