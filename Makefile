all: install

BIN=/usr/local/bin

EXE=$(wildcard tools/*)

GIT_BRANCH ?= "main"

checkout:
	cd pysh && make checkout
	git checkout $(GIT_BRANCH)
pull:
	cd pysh && make pull
	git pull

install:
	cd pysh && make install
	install -d $(DESTDIR)$(BIN)
	install $(EXE) $(DESTDIR)$(BIN)

uninstall:
	rm -f $(addprefix $(DESTDIR)$(BIN)/, $(notdir $(EXE)))
