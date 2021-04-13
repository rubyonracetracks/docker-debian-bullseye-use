#!/bin/bash

echo '*********************************************'
echo 'Returning PostgreSQL to its original settings'

PG_VERSION="$(ls /etc/postgresql)"
PG_CONF="/etc/postgresql/$PG_VERSION/main/postgresql.conf"
PG_CONF_ORIG="/etc/postgresql/$PG_VERSION/main/postgresql_orig.conf"
PG_HBA="/etc/postgresql/$PG_VERSION/main/pg_hba.conf"
PG_HBA_ORIG="/etc/postgresql/$PG_VERSION/main/pg_hba_orig.conf"
sudo cp $PG_CONF_ORIG $PG_CONF
sudo cp $PG_HBA_ORIG $PG_HBA
sudo service postgresql restart
