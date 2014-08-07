.PHONY: all cbc2013 cbc2014 deploy

all: cbc2013 cbc2014
	cp -rT cbc2014 cbcdev
	cp -rT cbc2013 cbcdev/2013
	cp root_static/* cbcdev/
	cp root_static/.htaccess cbcdev/

cbc2013:
	staticjinja build --srcpath=2013/ --outpath=cbc2013/ --static=static

cbc2014:
	staticjinja build --srcpath=2014/ --outpath=cbc2014/ --static=static

deploy: all
	scp -r cbcdev/ emerald.antanas.org:~/
