#! /bin/bash -v

for i in \
  May-2008-Results.pdf \
  September-2008-Results.pdf \
  November-2008-Results.pdf \
  May-2009-Results.pdf \
  November-2009-Results.pdf \
  November-2010-Results.pdf \
  January-2010-Results.pdf \
  March-2010-results.pdf \
  May-2010-Results.pdf \
  Forest-Grove-Recall-Results.pdf \
  May-2013-Results.pdf \
  November-2013-Results.pdf \
  March-11-2014-Results.pdf
do
  wget -nc http://www.co.washington.or.us/AssessmentTaxation/Elections/ElectionsArchive/upload/${i}
done
