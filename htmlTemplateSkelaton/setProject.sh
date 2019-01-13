#! /bin/bash

projectName=$1
bootstrap=$2

if [[ -d $projectName ]]
then
  echo "This directory is exist already in your current directory."
else
  mkdir $projectName
  mkdir $projectName/css
  mkdir $projectName/scripts
  mkdir $projectName/lib
  mkdir $projectName/images

  touch $projectName/"index.html"
  touch $projectName/css/"style.css"
  touch $projectName/scripts/"script.js"
  indexFile=$projectName/"index.html"
  comentText="<!-- Write your HTML Code here -->"

  htmlTemplate="
  <!DOCTYPE html>
  <html lang='en' dir='ltr'>
    <head>
      <meta charset='utf-8'>
      <title></title>
      <link rel='stylesheet' href='css/style.css'>
    </head>
    <body>

     <!-- write your html code here -->

    <script type='text/javascript' src='scrpts/script.js'></script>
    </body>
  </html>
  "

  bootstrapHtmlTemplate="
  <!doctype html>
  <html lang='en'>
    <head>
      <meta charset='utf-8'>
      <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
      <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css' integrity='sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS' crossorigin='anonymous'>
      <link rel='stylesheet' href='css/style.css'>
      <title>Hello, world!</title>
    </head>
    <body>
      <h1>Hello, world!</h1>


      <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js' integrity='sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo' crossorigin='anonymous'></script>
      <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js' integrity='sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut' crossorigin='anonymous'></script>
      <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js' integrity='sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k' crossorigin='anonymous'></script>
      <script type='text/javascript' src='scrpts/script.js'></script>
    </body>
  </html>

  "
  if [[ $bootstrap == 'bootstrap' ]]
  then
    echo $bootstrapHtmlTemplate > $indexFile
  else
    echo $htmlTemplate > $indexFile
  fi
  echo "Congratulations! Your project skeleton is ready."


fi
