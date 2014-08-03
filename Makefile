.PHONY: all cbc2013 cbc2014

all: cbc2013 cbc2014
	cp -rT cbc2014 dist
	cp -rT cbc2013 dist/2013
	cp root_static/* dist/
	cp root_static/.htaccess dist/

cbc2013:
	staticjinja build --srcpath=2013/ --outpath=cbc2013/ --static=static

cbc2014:
	staticjinja build --srcpath=2014/ --outpath=cbc2014/ --static=static
