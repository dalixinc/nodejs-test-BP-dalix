#!/bin/bash
sudo yum -y install java-17
sudo yum -y install java-17-amazon-corretto-devel
sudo yum -y install telnet
yes | sudo dnf install nginx

echo "<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Website</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="icon" href="./favicon.ico" type="image/x-icon">
  </head>
  <body>
    <main>
        <h1>Broker Portal on EC2</h1> 
	<P>Here we are at the NoName Bank Broker Portal</P>
    </main>
	<script src="index.js"></script>
  </body>
</html>" > /usr/share/nginx/html/index.html

sudo service nginx start
