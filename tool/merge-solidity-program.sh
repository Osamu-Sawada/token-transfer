#!/usr/bin/env bash

DIR=$(cd $(dirname $0);pwd)

OUTPUT_DIR="${DIR}/../deploy/source/"

mkdir -p "${OUTPUT_DIR}"

sol-merger "${DIR}/../contracts/transfer-history/TransferHistory.sol" ${OUTPUT_DIR}
sol-merger "${DIR}/../contracts/token-transfer/TokenTransfer.sol" ${OUTPUT_DIR}

cd ${OUTPUT_DIR}
CWD=`pwd`

echo "=== merged in ${CWD} ==="
ls -lh
