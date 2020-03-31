#!/bin/bash -x

docker-compose up -d

git clone https://github.com/orbs-network/kartoha.git

cd kartoha
npm install

./index.js topology --topology-contract-address 0x804c8336846d8206c95CEe24752D514210B5a240 --validator-registry-contract-address 0x56a6895fd37f358c17cbb3f14a864ea5fe871f0a --ethereum-endpoint http://localhost
export EXIT_CODE=$?

cd -

docker-compose stop && docker-compose rm -f

if [[ $EXIT_CODE -eq 0 ]]; then
    echo "Success";
else
    echo "Test failed";
fi

exit $EXIT_CODE