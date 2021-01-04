all: install

BIN=/usr/local/bin

EXE=$(wildcard tools/*)

install:
	install -d $(DESTDIR)$(BIN)
	install $(EXE) $(DESTDIR)$(BIN)

uninstall:
	rm -f $(addprefix $(DESTDIR)$(BIN)/, $(notdir $(EXE)))
