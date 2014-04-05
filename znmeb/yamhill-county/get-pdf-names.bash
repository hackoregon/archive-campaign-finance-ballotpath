grep -i pdf *.html \
  | sed 's/^.*href="//' \
  | grep -i Results \
  | grep -iv Precinct \
  | grep -iv Recall \
  | sed 's;http://www.co.yamhill.or.us;;' \
  | sed 's/".*$//'
