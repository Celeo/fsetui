default: run

run:
  @cargo r

fetch_static:
  @rm -f src/icaodata.csv
  @wget https://server.fseconomy.net/static/library/datafeed_icaodata.zip
  @unzip datafeed_icaodata.zip -d src
  @rm datafeed_icaodata.zip
