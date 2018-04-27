
list-containers:
	docker ps -a

rm-containers:
	docker ps -q -a | xargs docker rm

build:
	docker build -t pambrose/dialogflow-webhook:1.0 .

run:
	docker run -p 8080:8080 pambrose/dialogflow-webhook:1.0

push:
	docker push pambrose/dialogflow-webhook:1.0
