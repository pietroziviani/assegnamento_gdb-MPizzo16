echo
echo "--- Test: vettore con elementi doppi"

output=$(./codice 3 7 4 9 5 2 6 1 4)
expected_output="1 2 3 4 4 5 6 7 9 "

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
  exit 1
fi

echo

exit 0
