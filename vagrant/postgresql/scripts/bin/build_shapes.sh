#!/bin/bash

DATA="/home/vagrant/proj/data"
LOAD="/home/vagrant/proj/postgresql/scripts/sql/load"

shp2pgsql $DATA/shapes/PFR_Fireblocks_201701 fireblock > $LOAD/load_fireblock.sql
shp2pgsql $DATA/shapes/PFR_FireStations_201701 firestation > $LOAD/load_firestation.sql
shp2pgsql $DATA/shapes/PFR_FMA_201701 fma > $LOAD/load_fma.sql
shp2pgsql $DATA/shapes/tl_2016_41_bg censustract > $LOAD/load_censustract.sql
