#! /bin/bash -v

for i in `./get-pdf-names.bash`
do
  wget -nc http://www.co.washington.or.us/${i}
done
