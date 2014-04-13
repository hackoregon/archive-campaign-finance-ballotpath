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

sudo postgresql-setup initdb # will fail harmlessly if database already there
sudo systemctl enable postgresql # start the server on reboot
sudo systemctl start postgresql # start the server now

# PostgreSQL username = Linux username
export PGUSER=${USER}

# create a user
sudo su - postgres -c "dropdb ${PGUSER}"
sudo su - postgres -c "dropuser ${PGUSER}"
sudo su - postgres -c "createuser -d ${PGUSER}"

# create a 'home' database for the user
sudo su - postgres -c "createdb -O ${PGUSER} ${PGUSER}"
