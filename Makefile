default: docker_build

DOCKER_IMAGE ?= phoneixs/helm-kubectl-hg
DOCKER_TAG ?= `git rev-parse --abbrev-ref HEAD`

docker_build:
	docker image build \
	  -t $(DOCKER_IMAGE):$(DOCKER_TAG) ./
	  
docker_push:
	# Push to DockerHub
	docker image push $(DOCKER_IMAGE):$(DOCKER_TAG)
