#!/bin/bash

# Variables
SQL="/home/vagrant/proj/postgresql/scripts/sql"
COPY="$SQL/copy"
CREATE="$SQL/create"
DB="fire"

# Create database
echo 'Creating database fire...'
psql -f $CREATE/create-db-fire.sql -v db=$DB


# Create data tables
echo 'Creating tables...'
psql -f $CREATE/create-table-alarmlevel.sql $DB
psql -f $CREATE/create-table-mutualaid.sql $DB
psql -f $CREATE/create-table-typenaturecode.sql $DB
psql -f $CREATE/create-table-incsitfoundclass.sql $DB
psql -f $CREATE/create-table-incsitfoundsub.sql $DB
psql -f $CREATE/create-table-incsitfound.sql $DB
psql -f $CREATE/create-table-incident.sql $DB
psql -f $CREATE/create-table-agency.sql $DB
psql -f $CREATE/create-table-station.sql $DB
psql -f $CREATE/create-table-responderunit.sql $DB
psql -f $CREATE/create-table-responder.sql $DB
psql -f $CREATE/create-table-timedesc.sql $DB
psql -f $CREATE/create-table-inctimes.sql $DB
psql -f $CREATE/create-table-situationfound.sql $DB


# Copy data into tables
echo 'Loading data...'
psql -f $COPY/copy-table-alarmlevel.sql $DB
psql -f $COPY/copy-table-mutualaid.sql $DB
psql -f $COPY/copy-table-typenaturecode.sql $DB
psql -f $COPY/copy-table-incsitfoundclass.sql $DB
psql -f $COPY/copy-table-incsitfoundsub.sql $DB
psql -f $COPY/copy-table-incsitfound.sql $DB
psql -f $COPY/copy-table-incident.sql $DB
psql -f $COPY/copy-table-agency.sql $DB
psql -f $COPY/copy-table-station.sql $DB
psql -f $COPY/copy-table-responderunit.sql $DB
psql -f $COPY/copy-table-responder.sql $DB
psql -f $COPY/copy-table-timedesc.sql $DB
psql -f $COPY/copy-table-inctimes.sql $DB
psql -f $COPY/copy-table-situationfound.sql $DB
