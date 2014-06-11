
build-image:
	docker build -t apinotebook .

run-container:
	docker run -it -p 9013:9013 -p 35730:35730 -w "/usr/local/api-notebook" apinotebook /bin/bash
