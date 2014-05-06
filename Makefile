STYLESDIR := css
SCRIPTSDIR := js

all: index.html

%.html: %.asciidoc
	asciidoc -a linkcss -a stylesheet=custom.css -a stylesdir=$(STYLESDIR) -a scriptsdir=$(SCRIPTSDIR) -f conf/html5.conf --backend=html5 $<
