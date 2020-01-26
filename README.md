# Minikube app

Simple Python Flask app deployed to Minikube.

## Pre-requisites

Make sure to have installed:

- VirtualBox - https://www.virtualbox.org/
- kubectl - https://kubernetes.io/docs/tasks/tools/install-kubectl/
- Minikube - https://kubernetes.io/docs/tasks/tools/install-minikube/

## How to run

- Start Minikube: `minikube start --vm-driver virtualbox`
- Deploy the app: `kubectl apply -f deployment.yaml`
- Create a Service: `kubectl expose deployment minikube-app-deployment --type=LoadBalancer --port=8080`
- Make the Service accessible through: `minikube service minikube-app-deployment`

## How to run without Minikube

- Run `make`
- Go to `http://localhost:8080/`

### Github

https://github.com/agassner/minikube-app

### Docker Hub

https://hub.docker.com/r/agassner/minikube-app
