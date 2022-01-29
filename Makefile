KEYWORD=google.com

run: build
	docker run --rm fetch $(KEYWORD)

build:
	docker build --tag fetch .

test:
	./entrypoint.sh $(KEYWORD)
