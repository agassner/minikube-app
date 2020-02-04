all: run

build:
	docker build -t agassner/minikube-app:latest .

run: build
	docker run --rm -it -p 8080:8080 agassner/minikube-app:latest

test: build
	docker run --rm -it -p 8080:8080 agassner/minikube-app:latest py.test --cov=. --cov-report term-missing ./test
	docker run --rm -it -p 8080:8080 agassner/minikube-app:latest pylama

run_on_minikube:
	# Start Minikube
	minikube start --vm-driver virtualbox
	sleep 5

	# Deploy the app
	kubectl apply -f deployment.yaml
	sleep 15

	# Create a Service
	kubectl expose deployment minikube-app-deployment --type=LoadBalancer --port=8080
	sleep 15

	# Make the Service accessible
	minikube service minikube-app-deployment
