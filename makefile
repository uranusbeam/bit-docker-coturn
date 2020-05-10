
REGISTER = bitwaves
IMAGE = coturn
VER=1.0.0

default: build 

build: $(IMAGE).dn 

$(IMAGE).dn: Dockerfile
	docker-build-no-cache $(REGISTER)/$(IMAGE):$(VER) $(IMAGE)

.PHONY: clean
clean:
	-rm -f $(IMAGE).dn

remove:
	-docker rmi $(REGISTER)/$(IMAGE):$(VER)

