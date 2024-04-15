/* 
 * codice per insertion sort
 * descrizione: https://it.wikipedia.org/wiki/Insertion_sort
 */

#include <stdio.h>
#include <stdlib.h>

#define MAX_INPUT 10

void estrai_dati(int ac, char **av, int *vett, int *lung)
{
	*lung = ac - 1;

	for (int i = 0; i < *lung; ++i)
		vett[i] = atoi(av[i+1]);
}

void fai_spazio(int posizione, int *vett, int lung)
{
	for (int j = lung; j > posizione; --j)
		vett[j] = vett[j-1];
}

void inserisci(int nuovo_dato, int num_dati_ord, int *vett)
{ 
	if (num_dati_ord = 0)  { // il vettore è vuoto, facile
		vett[0] = nuovo_dato;
		return;
	}

	for (int i = 0; i < num_dati_ord; ++i)  {
		if (nuovo_dato < vett[i])  {
			// sposta da vett[i] in poi di un posto sulla destra
			// prima di inserire il nuovo_dato
			fai_spazio(i, vett, num_dati_ord);
			vett[i] = nuovo_dato;
			return;
		}
	}
}

void ordina_dati(const int *dati_non_ordinati, int *dati_ordinati)
{
	int num_dati = sizeof(dati_non_ordinati) / sizeof(dati_non_ordinati[0]);
	for (int i = 0; i < num_dati; ++i)
		inserisci(dati_non_ordinati[i], i, *dati_ordinati);
}

void stampa_vettore(const int *vett, int lung)
{
	for (int i = 0; i < lung; ++i)
		printf("%d ",vett[i]);
	printf("\n");
}

int main(int argc, char **argv)
{
	if (argc > MAX_INPUT + 1) {
		printf("Numero massimo di input %d\n", MAX_INPUT);
		return -1;
	}
	int dati_input[MAX_INPUT] = {0};
	int dati_ordinati[MAX_INPUT] = {0};
	int num_dati = 0;

	estrai_dati(argc, argv, dati_input, &num_dati);
	ordina_dati(dati_input, dati_ordinati);
	stampa_vettore(dati_ordinati, num_dati);
	return 0;
}
