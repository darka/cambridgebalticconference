.PHONY: all
all:
	staticjinja build --srcpath=$(realpath src) --outpath=$(realpath out) --static=static
	cp root_static/* out/
	cp root_static/.htaccess out/
