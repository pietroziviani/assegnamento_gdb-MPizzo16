codice:
	gcc -o codice codice.c

clean:
	rm codice

test: codice
	bash test.sh

test_vuoto: codice
	bash test_vuoto.sh

test_10_elementi: codice
	bash test_10_elementi.sh

test_11_elementi: codice
	bash test_11_elementi.sh

test_elementi_doppi: codice
	bash test_elementi_doppi.sh
