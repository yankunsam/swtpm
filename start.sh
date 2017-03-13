#!/bin/bash
if [ "$#"  -ne 1 ]; then
    echo "you should input 1 or 0"
    exit 1
fi

mkdir /tmp/vtpm$1
chown -R tss:root /tmp/vtpm$1
swtpm_setup --tpm-state /tmp/vtpm$1 --createek
export TPM_PATH=/tmp/vtpm$1
swtpm_cuse -n vtpm$1

