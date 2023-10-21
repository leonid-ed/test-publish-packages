
LDFLAGS =

GIT_COMMIT = $(shell git rev-parse HEAD)
BUILD_TIME = $(shell date)

LDFLAGS += -X main.gitCommit=${GIT_COMMIT}
LDFLAGS += -X main.gitRef=${GIT_COMMIT}
LDFLAGS += -X "main.buildTime=${BUILD_TIME}"
LDFLAGS += $(EXT_LDFLAGS)



all: app


app:
	go build -o test-publish-packages -ldflags '$(LDFLAGS)' ./test-publish-packages.go

