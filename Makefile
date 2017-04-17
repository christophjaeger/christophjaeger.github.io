STYLESDIR := css
SCRIPTSDIR := js
BACKEND := html5
CONF_FILE := conf/$(BACKEND).conf

all: index.html resume.html

%.html: %.asciidoc $(CONF_FILE)
	asciidoc -a linkcss -a stylesheet=custom.css -a stylesdir=$(STYLESDIR) -a scriptsdir=$(SCRIPTSDIR) -f $(CONF_FILE) -b $(BACKEND) $<
