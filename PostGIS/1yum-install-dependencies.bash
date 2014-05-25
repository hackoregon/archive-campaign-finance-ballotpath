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

sudo cp qgis.repo /etc/yum.repos.d
sudo yum update -y
sudo yum install -y \
  postgis \
  postgis-docs \
  postgis-utils \
  pgRouting \
  pgadmin3 \
  qgis \
  qgis-grass \
  qgis-mapserver \
  qgis-python \
  josm \
  merkaartor \
  osm-gps-map \
  osm2pgsql \
  osm-gps-map \
  readosm \
  routino
