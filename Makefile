codice:
	gcc -o codice codice.c

clean:
	rm codice

test: codice
	bash test.sh
