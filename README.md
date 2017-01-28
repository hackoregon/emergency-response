# emergency-response
Simulations, Models, and Visualizations of Portland Fire and Rescue data

## _IMPORTANT_
In order for the vagrant box to install correctly, you _must_ download the file 'dump3.sql' from the shared
drive and put it into:
emergency-response/vagrant/data

If you forget to download the file and try to run 'vagrant up' it will break, and you will have to
'vagrant destroy' before trying to 'vagrant up' again.

## DB Info:
to log into the DB use:

DB name: fire

username: eruser

password: fire


_BUT_ I set it up so you don't have to enter the password, just hit 'ok' if you are asked for a
password in pgadmin.

## Port Forwrding:

Port 4545 on guest machine has been forwarded to 4546 on host.
