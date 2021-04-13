#!/bin/bash

echo 'Enter the directory name you wish to use for your new Docusaurus app:'
read DIR_NAME

echo '---------------'
echo "mkdir $DIR_NAME"
mkdir $DIR_NAME

CURRENT_PWD=$PWD
PATH_APP=$CURRENT_PWD/$DIR_NAME

echo '-----------------------------------'
echo "cd $PATH_APP && npx docusaurus-init"
cd $PATH_APP && npx docusaurus-init
wait

mv $PATH_APP/docs-examples-from-docusaurus $PATH_APP/docs

mv $PATH_APP/website/blog-examples-from-docusaurus $PATH_APP/website/blog

echo '********************************************************'
echo 'About to run your new Docusaurus app on the local server'
echo 'You will be able to view your app in your browser at the following URLs:'
echo 'Docusaurus web server: http://localhost:3000'
echo 'LiveReload web server: http://localhost:35729'
echo ''
echo 'NOTE: If you are using a non-zero port offset, the correct port numbers will be different.'
echo "******************************************************************************************"
cat /home/winner/shared/ports.txt

echo '---------------------------------'
echo "cd $PATH_APP/website && npm start"
cd $PATH_APP/website && npm start
