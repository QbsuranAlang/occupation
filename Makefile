
.PHONY: all

all:
	mkdir -p bin
	GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o bin/occupation_mac_amd64 occupation.go
	GOOS=windows GOARCH=amd64 go build -ldflags="-H windowsgui -s -w" -o bin/occupation_win_amd64.exe occupation.go
	GOOS=windows GOARCH=arm64 go build -ldflags="-H windowsgui -s -w" -o bin/occupation_win_arm64.exe occupation.go
