hack-oregon-code
================

1. Getting open source GIS tools:
    * Go to [Welcome to OSGeo-Live 7.9](http://live.osgeo.org/en/index.html)
    * Follow the instructions if you want the whole live distribution.
    * For Windows, go to [OSGeo Windows installers](http://live.osgeo.org/en/win_installers.html)
    * For Macintosh, go to [OSGeo Macintosh installers for OSX Snow Leopard](http://live.osgeo.org/en/mac_installers.html).
1. Columbia County tax assessor data:
    * Download Columbia County tax assessor data: get-columbia-county-gis.bash
    * Install mdbtools-gui and open the MDB file to browse.
    * Import shapefiles into QGIS.
1. Oregon Geospatial Data Clearinghouse: http://www.oregon.gov/DAS/pages/irmd/geo/sdlibrary.aspx
1. To scrape Washington County elections data:
    * Go to http://www.co.washington.or.us/AssessmentTaxation/Elections/ElectionsArchive/index.cfm
    * Select a year.
    * Download and scrape all the PDFs.
    * ScraperWiki can do this - I have some Ruby code somewhere for that.
