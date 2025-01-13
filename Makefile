lint:
	sudo docker run --rm -it -v $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/
test:
	sudo docker compose exec app go test main_test.go
start:
	sudo docker compose up -d
Down:
	sudo docker-compose down
ci: start lint test Down
