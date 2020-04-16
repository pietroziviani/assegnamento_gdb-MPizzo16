echo
echo "--- Test: vettore con più di 10 elementi" 

output=$(./codice 3 7 4 9 5 2 6 1 8 10 11 )
expected_output="Numero massimo di input 10"

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
  exit 1
fi

exit 0
