#! /bin/bash
#
# Copyright (C) 2013 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

mkdir -p Columbia
pushd Columbia
wget -nc http://www.co.columbia.or.us/files/assessor/tax14.mdb
wget -nc http://www.co.columbia.or.us/files/assessor/taxlot14.dbf
wget -nc http://www.co.columbia.or.us/files/assessor/taxlot14.shp
wget -nc http://www.co.columbia.or.us/files/assessor/taxlot14.prj
wget -nc http://www.co.columbia.or.us/files/assessor/taxlot14.shx
popd
