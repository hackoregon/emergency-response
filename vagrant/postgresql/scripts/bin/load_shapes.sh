#!/bin/bash

LOAD="/home/vagrant/proj/postgresql/scripts/sql/load"

psql -d fire < $LOAD/load_fireblock.sql
psql -d fire < $LOAD/load_firestation.sql
psql -d fire < $LOAD/load_fma.sql
psql -d fire < $LOAD/load_censustract.sql
