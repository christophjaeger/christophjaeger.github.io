STYLESDIR := css
SCRIPTSDIR := js

all: index.html reading-list.html

%.html: %.asciidoc
	asciidoc -a linkcss -a stylesheet=custom.css -a stylesdir=$(STYLESDIR) -a scriptsdir=$(SCRIPTSDIR) -f conf/html5.conf --backend=html5 $<
