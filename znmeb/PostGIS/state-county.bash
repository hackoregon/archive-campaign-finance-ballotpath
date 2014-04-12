#! /bin/bash -v
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/STATE/ --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/COUNTY/ --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 
