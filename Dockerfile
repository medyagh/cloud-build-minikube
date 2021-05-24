FROM gcr.io/k8s-minikube/kicbase:v0.0.18
RUN apt-get update && apt-get install -y curl linux-image-$(uname -r)
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    cp kubectl /usr/local/bin
RUN curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && \
    install minikube-linux-amd64 /usr/local/bin/minikube
