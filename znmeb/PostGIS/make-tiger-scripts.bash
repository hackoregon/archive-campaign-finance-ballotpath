#! /bin/bash -v

# make workspace
sudo rm -fr /gisdata/temp
sudo mkdir -p /gisdata/temp
sudo chown -R ${USER}:${USER} /gisdata

# execute script builder
psql -f make-tiger-scripts.psql geocoder znmeb
chmod +x /gisdata/*.bash

# fix path
for i in '/gisdata/state-county.bash' '/gisdata/oregon-washington.bash'
do
  sed -i 's;export PGBIN=/usr/pgsql-9.0/bin;export PGBIN=/usr/bin;' ${i}
done

# comment out 'localhost' setting so we can use UNIX sockets
for i in '/gisdata/state-county.bash' '/gisdata/oregon-washington.bash'
do
  sed -i 's;export PGHOST=localhost;#export PGHOST=localhost;' ${i}
done

# change owner to 'postgres'
sudo chown -R postgres:postgres /gisdata
