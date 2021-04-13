#!/bin/bash

# This script creates a basic Rails app that uses an SQLite database.
# PURPOSE: Provide confirmation that Ruby on Rails is properly set up.

# This is the same test app as the one at http://elinux.org/RPi_Ruby_on_Rails .
cd /home/winner/shared && rails new school_sq --skip-spring
cd /home/winner/shared/school_sq && rails g scaffold Pupil name:string form:string
cd /home/winner/shared/school_sq && rake db:migrate

echo '**********************'
echo 'OPEN YOUR WEB BROWSER.'
echo 'GO TO THE FOLLOWING URL:'
echo 'http://localhost:3000/pupils'

echo '***************'
echo 'IMPORTANT NOTE:'
echo 'The port number listed above assumes a zero offset for the port number.'
echo 'If you are using a non-zero offset in Docker,' 
echo 'you must adjust the above port number accordingly.'
echo '**************************************************'

echo ''
cat /home/winner/shared/ports.txt
echo ''

echo '*************************************************************************'
echo "You can use access the database in this app's db/development.sqlite3 file"
echo 'by using SQLite database browser.'
echo '*********************************'
cd /home/winner/shared/school_sq && rails s -b 0.0.0.0 -p 3000
