# How to run
`docker build -t archimista .`
`docker run -it archimista rails s -b 0.0.0.0`

To know the IP of the container, run `docker container ls`, take the id of archimista and run `docker inspect <container id> | grep IP`, take note of the ip address.

the webserver will serve on the docker container IP, port 3000.

