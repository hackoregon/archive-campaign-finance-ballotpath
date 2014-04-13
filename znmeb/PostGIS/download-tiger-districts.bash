#! /bin/bash -v
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

# congressional districts
wget ftp://ftp2.census.gov/geo/tiger/TIGER2013/CD/tl_2013_us_cd113.zip

# school districts (elementary, secondary, unified)
wget http://www2.census.gov/geo/tiger/TIGER2013/ELSD/tl_2013_41_elsd.zip
wget http://www2.census.gov/geo/tiger/TIGER2013/SCSD/tl_2013_41_scsd.zip
wget http://www2.census.gov/geo/tiger/TIGER2013/UNSD/tl_2013_41_unsd.zip

# state legislative districts (lower, upper)
wget http://www2.census.gov/geo/tiger/TIGER2013/SLDL/tl_2013_41_sldl.zip
wget http://www2.census.gov/geo/tiger/TIGER2013/SLDU/tl_2013_41_sldu.zip
