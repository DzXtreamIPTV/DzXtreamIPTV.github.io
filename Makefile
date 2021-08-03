.PHONY: all clean
all: static.html

clean:
	rm -f static.html

static.html: index.html index.js index.css
	python2 deploy.py index.html index.js index.css > static.html
