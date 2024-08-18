docker image ls

# Dockerfile FROM instruction
docker build -t 27fardi98/from from

# Dockerfile RUN instruction
# RUN dijalankan di stage build
docker build -t 27fardi98/run run

docker build -t 27fardi98/run run --progress=plain --no-cache

# Dockerfile CMD instruction
# CMD dijalankan di stage run
docker build -t 27fardi98/command command

docker image inspect 27fardi98/command

docker container create --name command 27fardi98/command
docker container start command
docker container logs command

# Dockerfile LABEL instruction
docker build -t 27fardi98/label label

docker image inspect 27fardi98/label

# Dockerfile ADD instruction
docker build -t 27fardi98/add add

docker container create --name add 27fardi98/add
docker container start add
docker container logs add

# Dockerfile ignore instruction
docker build -t 27fardi98/ignore ignore

docker container create --name ignore 27fardi98/ignore
docker container start ignore
docker container logs ignore

# Dockerfile expose instruction
docker build -t 27fardi98/expose expose
docker image inspect 27fardi98/expose

docker container create --name expose -p 8080:8080 27fardi98/expose
docker container start expose

# Dockerfile environment variable instruction
docker build -t 27fardi98/environment-variable environment-variable
docker image inspect 27fardi98/environment-variable

docker container create --name environment-variable -e APP_PORT=6969 -p 6969:6969 27fardi98/environment-variable
docker container start environment-variable

docker container logs environment-variable

# Dockerfile volume instruction
docker build -t 27fardi98/volume volume
docker image inspect 27fardi98/volume

docker container create --name volume -e APP_DATA=/logs -e APP_PORT=8080 -p 8080:8080 27fardi98/volume
docker container start volume
docker container logs volume
docker container inspect volume

docker volume ls

# Dockerfile workdir instruction
docker build -t 27fardi98/workdir workdir
docker image inspect 27fardi98/workdir

docker container create --name workdir -p 9090:9090 27fardi98/workdir
docker container start workdir
docker container logs workdir
docker container inspect workdir

# Dockerfile user instruction
docker build -t 27fardi98/user user
docker image inspect 27fardi98/user

docker container create --name user -p 6969:6969 27fardi98/user
docker container start user

# Dockerfile arg instruction
docker build -t 27fardi98/arg arg --build-arg app=fardi
docker image inspect 27fardi98/arg

docker container create --name arg -p 8080:8080 27fardi98/arg
docker container exec -it arg /bin/sh

# Dockerfile healthcheck instruction
docker build -t 27fardi98/health-check health-check
docker image inspect 27fardi98/health-check

docker container create --name health-check -p 8080:8080 27fardi98/health-check
docker container start health-check
docker container ls

docker healthcheck 27fardi98/health-check

# Dockerfile entrypoint instruction
docker build -t 27fardi98/entrypoint entrypoint
docker image inspect 27fardi98/entrypoint

docker container create --name entrypoint -p 8080:8080 27fardi98/entrypoint
docker container start entrypoint

# Docker multi-stage build
docker build -t 27fardi98/multi-stage multi-stage
docker image inspect 27fardi98/multi-stage

docker container create --name multi-stage -p 8080:8080 27fardi98/multi-stage
docker container start multi-stage
docker container logs multi-stage