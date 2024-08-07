#!/bin/bash
dnf install nginx -y
systemctl start nginx
systemctl enable nginx
rm -rf /usr/share/nginx/html/*
echo "<h1>welcome to newer version of nginx</h1>" > /usr/share/nginx/html/index.html
