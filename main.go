package main

import (
	goecs "github.com/oneforx/go-ecs"
	goserge "github.com/oneforx/go-serge"
)

func Load() goserge.ILibrary {
	var library goserge.ILibrary = &goserge.Library{
		Id: goecs.Identifier{Namespace: "goserge", Path: "authentification"},
	}

	return library
}
