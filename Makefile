.POSIX:

PREFIX = /usr/local

output: dwmblocks.o
	gcc dwmblocks.o -lX11 -o dwmblocks
dwmblocks.o: dwmblocks.c config.h
	gcc -c -lX11 dwmblocks.c
clean:
	rm -f *.o *.gch dwmblocks
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/share/dwmblocks
	cp -rf scripts $(DESTDIR)$(PREFIX)/share/dwmblocks
	chmod -R 755 $(DESTDIR)$(PREFIX)/share/dwmblocks/scripts
	./generator.sh > $(DESTDIR)$(PREFIX)/share/dwmblocks/codes
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
	rm -rf $(DESTDIR)$(PREFIX)/share/dwmblocks

.PHONY: clean install uninstall
