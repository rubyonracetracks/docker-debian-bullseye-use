#!/bin/bash

echo 'Enter the directory name you wish to use for your new React app:'
read DIR_NAME

echo '------------------------------'
echo "npx create-react-app $DIR_NAME"
npx create-react-app $DIR_NAME

CURRENT_PWD=$PWD
PATH_APP=$CURRENT_PWD/$DIR_NAME

echo '***************************************************'
echo 'About to run your new React app on the local server'
echo 'You will be able to view your app in your browser'
echo "at the 'On Your Network' URL."
echo "*****************************"

echo '-------------------------'
echo "cd $PATH_APP && npm start"
cd $PATH_APP && npm start
