#! /bin/bash -v

# make a list of PDF names
./get-pdf-names.bash > get-pdfs.bash

# wrap the names
sed -i "s;^;wget -nc 'http://www.co.yamhill.or.us/;" get-pdfs.bash
sed -i "s;$;';" get-pdfs.bash

# run it
bash -v get-pdfs.bash
