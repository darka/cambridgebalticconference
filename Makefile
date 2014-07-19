.PHONY: all
all:
	staticjinja build --srcpath=$(realpath src) --outpath=$(realpath out) --static=static
	cp src/.htaccess out/.htaccess
