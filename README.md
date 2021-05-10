# IRIS-in-Astronomy

This repository contains the materials needed in order to reproduce this article.

These are the different steps needed:

1. Register in Gaia ESA [archive](https://gea.esac.esa.int/archive/).
2. Download data in [CSV](http://cdn.gea.esac.esa.int/Gaia/gdr2/gaia_source/csv/). In the example below only those files whose filename matched this pattern: GaiaSource_1*.csv were used.
3. Concatenate the CSV files using:

 ```bash
 for i in GaiaSource_1*.csv; do echo $i; cat  $i >> GaiaSource_1.csv; rm $i; done
 ```

4. Connect dbeaver to the instances. Dbeaver 21.0.1 was used. It contains appropiate jdbc drivers for PostGres and IRIS.
6. Create the table in IRIS and postgres using this definition files:
 sql/gaia_source.irissql
 sql/gaia_source.psql
6. Setup ingestion scripts:
   * IRIS:
       1. Update jdbc_path in: **ingest/ingest-iris.sh** variable to point to iris-instance/dev/java/lib/JDK18 directory.
       2. Update IRIS host/port and user/password in: **ingest/gaia.properties.iris**
   
   * Postgres: 
       1. Dowload pg_bulkload from https://ossc-db.github.io/pg_bulkload/pg_bulkload.html and install it pgbulk_load 
       2. Update user and password in ingest/ingest-postgres.sh
       3. Update table name in: gaia.properties.postgres
7. Ingest data 
    * IRIS: execute ingest/ingest-iris.sh
    * Postgres: execute ingest/ingest-postgres.sh
10. Run queries
