# cloud-build-minikube

Cloud build quick start:
https://cloud.google.com/build/docs/quickstart-build

To submit the build:
```
gcloud builds submit --config cloudbuild.yaml
```

If you want to run minikube start with docker driver,
replace line 19 of cloudbuild.yaml with following
```
docker exec minikube /bin/bash -c "minikube start --force && kubectl get pods -A"
```
