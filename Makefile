LDFLAGS=-lsqlite3

main: interpreter.c
	cc -o main interpreter.c $(LDFLAGS)

clean:
	rm main
