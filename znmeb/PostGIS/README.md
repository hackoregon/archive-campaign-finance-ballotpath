# Setting up PostGIS

The current setup is for Fedora Linux 20, and all the dependencies are already present in [CompJournoStick](http://znmeb.github.io/CompJournoStick/). It's pretty easy to port this to RHEL/CentOS, Ubuntu or openSUSE. I'll do that once we know where servers, etc. are going to reside, but for now I'm staying on the Fedora desktop.

1. Install the Linux packages

      ./1yum-install-dependencies.bash

This will install PostgreSQL, PgAdmin3, PostGIS, QGIS and some OpenStreetMap tools, plus any dependencies. You only have to run this once.

2. Configure PostgreSQL

```
./2configure-postgresql.bash
```
This creates the PostgreSQL data area on the hard drive, enables the PostgreSQL server to start at boot time, starts it and installs the 'adminpack' extension. It will ask you to create a password for the PostgreSQL 'superuser', named 'postgres'. You only have to run this once, but it won't hurt to run it again.

3. Set up the PostGIS databases

```
./3set-up-postgis.bash
```
This will create a PostgreSQL user with the same name as your Fedora Linux login. If the user exists already, it will be deleted and recreated. Then it will create the following databases for that user:
    * congress_districts: US Congressional districts for the whole USA
    * state_legislature_upper_districts: Oregon Senate districts
    * state_legislature_lower_districts: Oregon House districts
    * unified_school_districts: Unified school districts for Oregon
    * elementary_school_districts: Elementary school districts for Oregon
    * secondary_school_districts: Secondary school districts for Oregon
    * geocoder: A database for the TIGER geocoding / reverse geocoding package

4. Download the district shapefiles

```
./4download-tiger-districts.bash
```
This will download the shapefiles (except for the 'geocoder' data) required to populate the databases from the US Census Bureau's TIGER FTP site. The first time you run it, it will take longer because it's downloading, but subsequent runs will only download if the file has changed on the FTP site.

After the download, the script unpacks the ZIP archives and imports them into the databases.
