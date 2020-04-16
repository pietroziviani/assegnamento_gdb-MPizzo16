echo
echo "--- Test: vettore con meno di 10 elementi" 

output=$(./codice 3 7 4 9 5 2 6 1)
expected_output="1 2 3 4 5 6 7 9 "

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
fi

echo
echo "--- Test: vettore con più di 10 elementi" 

output=$(./codice 3 7 4 9 5 2 6 1 8 10 11 )
expected_output="Numero massimo di input 10"

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
fi

echo
echo "--- Test: vettore con 10 elementi" 

output=$(./codice 3 7 4 9 5 2 6 1 8 10)
expected_output="1 2 3 4 5 6 7 8 9 10 "

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
fi



echo
echo "--- Test: vettore vuoto"

output=$(./codice)
expected_output=""

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
fi


echo
echo "--- Test: vettore con elementi doppi"

output=$(./codice 3 7 4 9 5 2 6 1 4)
expected_output="1 2 3 4 4 5 6 7 9 "

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
fi

echo

exit 0
