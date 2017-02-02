#!/bin/bash

Password="$1"

sed -i -e 's/local\(\s*\)all\(\s*\)postgres\(\s*\)peer/local\1all\2postgres\3trust/g' /etc/postgresql/9.5/main/pg_hba.conf

service postgresql restart

su postgres -c "psql -c \"alter user postgres with password '$Password';\""

sed -i -e 's/local\(\s*\)all\(\s*\)postgres\(\s*\)trust/local\1all\2postgres\3md5/g' /etc/postgresql/9.5/main/pg_hba.conf

sed -i -e 's/local\(\s*\)all\(\s*\)all\(\s*\)peer/local\1all\2all\3md5/g' /etc/postgresql/9.5/main/pg_hba.conf

service postgresql restart
