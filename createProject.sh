#!/bin/sh

#This program creates a deployable static web app with vite/React

printf "Type the name of your react project . -> "

read APPNAME

printf "Type the template you want to use- the following are available
react-ts
preact-ts
vanilla-ts
. -> "

read TEMPLATE

npm create vite@latest $APPNAME -- --template $TEMPLATE

#Created the application with react

#install gh pages

cd $APPNAME && npm install gh-pages --save-dev

cd .. && node updateJson.js $APPNAME/package.json $APPNAME

printf "You just created $APPNAME with $TEMPLATE, i will go to sleep 2 seconds"

sleep 2

#updated the jsonfile

cd $APPNAME && git init

git add .

git commit -m "initial commit"

gh repo create $APPNAME --public --source ./ --push --add-readme


printf "You've now pushed to github at repo $APPNAME"

npm install && npm run deploy

npm run dev