CFLAGS=-std=c11 -g -static

main: main.c
	cc -o main $(CFLAGS) main.c

test: main
	test/test.sh

clean:
	rm -f main *.o *~ tmp* temp* *.out

.PHONY: test clean
