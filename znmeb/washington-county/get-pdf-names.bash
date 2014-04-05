grep upload *.html \
  | sed 's/^.*href="//' \
  | grep -i Results \
  | grep -iv HTM \
  | grep -iv Recall \
  | sed 's/".*$//'
