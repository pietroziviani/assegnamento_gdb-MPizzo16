# Assegnamento `gdb`
In questo assegnamento vi viene chiesto di modificare un codice con diversi bug perché riesca a passare una serie di test.

Il programma ha l'obiettivo di ordinare una lista di interi passati a linea di comando con l'algoritmo di *insertion sort*. Per dettagli potete visitare la pagina wikipedia  *https://it.wikipedia.org/wiki/Insertion_sort*.

Un esempio di esecuzione del programma corretto potrebbe essere:

```bash
$ ./codice 3 7 4 9 5 2 6 1
1 2 3 4 5 6 7 9
```

Attualmente il programma invece ritorna:

```bash
$ ./codice 3 7 4 9 5 2 6 1
0 0 0 0 0 0 0 0
```

A voi scoprire perché. Buona caccia!

### Note importanti

- Ogni volta che fate un `git push origin master`, github eseguirà una serie di test e vi comunicherà se il vostro programma funziona. Per vedere il risultato di questa specie di autovalutazione seguite le istruzioni in questa pagina: https://classroom.github.com/help/reviewing-auto-graded-work-students

- Prima di fare il push potete eseguire localmente i test,  scrivendo a linea di comando `make` e il nome del test. Esempi:

  ```bash
  $ make test 
  bash test.sh
  
  --- Test: vettore con meno di 10 elementi
  Fallito: Output aspettato '1 2 3 4 5 6 7 9 ' ma ottenuto 0 0 0 0 0 0 0 0
  Makefile:8: recipe for target 'test' failed
  make: *** [test] Error 1
  $ make test_vuoto
  bash test_vuoto.sh
  
  --- Test: vettore vuoto
  Passato: Output corretto
  
  $ make test_10_elementi
  ...
  $ make test_11_elementi
  ...
  $ make test_elementi_doppi
  ...
  ```

  Ovviamente l'obiettivo è di passare tutti i test.

- Dovete modificare solo il file `codice.c`

- Non modificate i `printf` già presenti altrimenti i test non funzioneranno. I test confrontano gli output prodotti dal programma quindi falliranno se modificate quello che viene stampato. 

- Prima di fare `git push origin master` togliete eventuali `printf` aggiuntivi che potreste avere aggiunto per il debugging. Questo per le stesse ragioni del punto precedente.

- Non è obbligatorio passare tutti i test prima di fare il `git push origin master`. Anzi è consigliabile farlo più frequentemente. Infatti, se mandate il codice nel vostro repository remoto, posso vederlo e darvi feedback se vi servono (in `Pull requests` avete già creato un `Feedback` dove potrò inserire commenti alle vostre modifiche).



