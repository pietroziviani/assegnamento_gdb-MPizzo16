echo
echo "--- Test: vettore vuoto"

output=$(./codice)
expected_output=""

if [ "$output" == "$expected_output" ] ; then
  echo "Passato: Output corretto"
else
  echo "Fallito: Output aspettato '$expected_output' ma ottenuto $output"
  exit 1
fi

exit 0
