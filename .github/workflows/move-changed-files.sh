#!/bin/bash
# https://www.unix.com/shell-programming-and-scripting/158222-script-compare-file-sizes.html
# https://linuxize.com/post/bash-check-if-file-exists/

for f in $FILES; do
    FILE=pdf/${f}
    if [[ -e "$FILE" ]]; then
        s1=$(stat -c %s ${f})
        s2=$(stat -c %s pdf/${f})
        if [[ ${s1} -ne ${s2} ]]; then
            mv ${f} pdf/${f}
            echo moved file ${f} with size ${s1}
        else
            echo did not move file ${f}
        fi
    else
        echo "${FILE} does not exists."
    fi
done
