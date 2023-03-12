.PHONY: prepare build

prepare:
	mkdir -p ./bin/server/mods

build: prepare
	go build -buildmode=plugin . && mv go-serge-mod-auth.so ./bin/server/mods
