install:
	echo "Installing go!"
	echo "PS: make command in progress, stay tuned for updates!"
test:
	go test -v
dist: test
	GOOS=darwin GOARCH=amd64 go build -v -o dist/darwin_amd64/game_of_dice
	GOOS=linux GOARCH=amd64 go build -v -o dist/linux_amd64/game_of_dice
	GOOS=windows GOARCH=amd64 go build -v -o dist/windows_amd64/game_of_dice
build: test
	go build