JEKYLL=docker run --rm -it --env POLLING=true --publish 4000:4000 --volume "$(PWD)":/srv/jekyll jekyll/jekyll

.PHONY=default build serve

default: build

build:
	@$(JEKYLL):builder jekyll build --verbose

serve:
	@$(JEKYLL) jekyll serve
