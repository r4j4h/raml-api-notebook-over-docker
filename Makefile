
build-image:
	docker build -t apinotebook .

run-container:
	docker run -it -p 3000:3000 -w "/usr/local/api-notebook" apinotebook /bin/bash
