# How to run
- `docker-compose build`
- `docker-compose run web rake db:create db:setup`
- `docker-compose run web rake db:migrate`
- `docker-compose run web rake db:seed`
- `docker-compose up`

To know the IP of the container, run `docker container ls`, take the id of archimista and run `docker inspect <container id> | grep IP`, take note of the ip address.

the webserver will serve on the docker container IP, port 3000.

