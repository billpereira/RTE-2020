#! /bin/bash

echo "Deletando datasets BILL.DEMO.TMP*"

dslist=$(zowe files ls ds "BILL.DEMO.TMP*")

for dsn in $dslist
do
    echo "Deletando: $dsn"
    zowe files del ds "$dsn" -f
done
