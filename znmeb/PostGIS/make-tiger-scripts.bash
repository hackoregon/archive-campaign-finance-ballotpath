#! /bin/bash -v

# make workspace
sudo rm -fr /gisdata
sudo mkdir -p /gisdata/temp
sudo chown -R ${USER}:${USER} /gisdata

# execute script builder
psql -f make-tiger-scripts.psql ballotpath znmeb
chmod +x /gisdata/*.bash
sed -i \
  's;export PGBIN=/usr/pgsql-9.0/bin;export PGBIN=/usr/bin;' \
  /gisdata/state-county.bash
sed -i \
  's;export PGBIN=/usr/pgsql-9.0/bin;export PGBIN=/usr/bin;' \
  /gisdata/oregon-washington.bash
