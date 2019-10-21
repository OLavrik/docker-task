build: Dockerfile
	docker build -t OLavrik/docker-task .
start:
	docker run -d --name docker-task -p 65432:65432/tcp OLavrik/docker-task
stop:
	docker stop docker-task
clean:
	docker rm docker-task
	docker rmi OLavrik/docker-task debian
