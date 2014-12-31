bin/tl: bin/ main.c
	gcc -o bin/tl main.c

bin/:
	test -d bin/ || mkdir bin/

clean:
	rm bin/tl
	rmdir bin/

test: bin/tl
	./test.sh
