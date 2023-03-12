.PHONY: prepare build

prepare:
	sudo chmod +x ./prepare.sh
	./prepare.sh

build: prepare
	go build -buildmode=plugin . && mv go-serge-mod-auth.so ./bin/server/mods
