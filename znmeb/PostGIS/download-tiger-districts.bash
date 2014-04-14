#! /bin/bash
#
# Copyright (C) 2014 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# make workspace
sudo rm -fr /gisdata/temp
sudo mkdir -p /gisdata/temp
sudo chown -R ${USER}:${USER} /gisdata

cd /gisdata

# congressional districts (all USA)
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/CD/ \
  --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 

# Oregon school districts (elementary, secondary, unified)
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/ELSD/tl_*_41_* \
  --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/SCSD/tl_*_41_* \
  --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/UNSD/tl_*_41_* \
  --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 

# Oregon state legislative districts (lower, upper)
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/SLDL/tl_*_41_* \
  --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/SLDU/tl_*_41_* \
  --no-parent --relative --recursive --level=1 --accept=zip --mirror --reject=html 
