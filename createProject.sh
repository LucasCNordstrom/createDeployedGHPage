#!/bin/sh

#This program creates a deployable static web app with vite/React

printf "Type the name of your react project . -> "

read APPNAME

PS3="Choose the template you want to use- "

select TEMPLATE in react-ts preact-ts vanilla-ts
do
    case $TEMPLATE in
        react-ts)
        echo "selected template: $TEMPLATE"
        break
        ;;
        preact-ts)
        echo "selected template: $TEMPLATE"
        break
        ;;
        preact-ts)
        echo "selected template: $TEMPLATE"
        break
        ;;
        *)
        echo "Not supported template"
        ;;
    esac
done

printf "Will create a viteProject with $TEMPLATE as template"

npm create vite@latest $APPNAME -- --template $TEMPLATE

#Created the application with react

#install gh pages

cd $APPNAME && npm install gh-pages --save-dev

cd .. && node updateJson.js $APPNAME/package.json $APPNAME

printf "You just created $APPNAME with $TEMPLATE, i will wait 2 seconds while installing things"

sleep 2

#updated the jsonfile

cd $APPNAME && git init

git add .

git commit -m "initial commit"

gh repo create $APPNAME --public --source ./ --push --add-readme


printf "You've now pushed to github at repo $APPNAME"

npm install && npm run deploy

npm run dev