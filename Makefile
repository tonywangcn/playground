SRV_NAME=playground

NAME_SPACE=tonywangcn
REPO=${REPO_EX}
TAG=$(shell date +%Y%m%d%H%M%S)
FIXTAG?=dev
NAME=${NAME_SPACE}/${SRV_NAME}

build:
	echo build ${NAME}:${FIXTAG}
	docker build -t ${NAME}:${FIXTAG} .
	docker push ${NAME}:${FIXTAG}

dev:
	docker-compose up -d