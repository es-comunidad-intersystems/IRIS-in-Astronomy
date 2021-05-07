# IRIS-in-Astronomy

This repository contains the materials needed in order to reproduce this article.

These are the different steps needed:

1. Register in ESA archives: URL
2. Download data from URL, only those files with this kind of filename are needed: GaiaSource_1*_*.csv
3. Concatenate the data using:
for i in GaiaSource_1*_*.csv; do echo $i; cat $i >> GaiaSource_1.csv; rm $i; done
4. Connect dbever to the instances
5. Create the table in IRIS and postgres using this definition files:
gaia_source.iris
gaia_source.psql
6. Create indexes
7. Setup ingestion scripts, see 
8. ingest-iris.sh
9. ingest-postgres.sh
10. and the corresponding configuration files: gaia.ctl and gaia
11. Ingest data using the corresponding scripts
12. Run queries
