all: build run

build:
	docker build -t minikube_app .

run:
	docker run --rm -it -p 8080:8080 minikube_app
