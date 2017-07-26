echo "COMPILANDO BUILD DE DOCKER: RUN"

docker kill api
docker rm api

docker build -t dockerfile .


docker run -d --name api -t -p 8081:8081 dockerfile .




