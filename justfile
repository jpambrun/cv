build-docker:
	docker build -t my/latex -f Dockerfile .

pdf: build-docker
    docker run --rm -t --user="$(id -u):$(id -g)" --net=none -v "$(pwd):/tmp" --workdir /tmp my/latex latexmk