BIN=/home/ben/bin/makereadme

install:
	rm -f $(BIN)
	ln makereadme $(BIN)

test:
	prove ./test.pl
