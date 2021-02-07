

all: MCP4728

install: MCP4728
	cp -a libMCP4728.so /usr/local/lib
	cp -a MCP4728.h /usr/local/include
	ldconfig

uninstall:
	rm -f /usr/local/lib/libMCP4728.so
	rm -f /usr/local/include/MCP4728.h

MCP4728:
	gcc -o libMCP4728.so -shared -fPIC MCP4728.c

clean:
	rm -f libMCP4728.so
