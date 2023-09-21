#!/bin/bash



wget https://download.webmin.com/devel/tarballs/webmin-current.tar.gz;
tar -xf webmin-current.tar.gz --strip-components=1; 
echo ; read -p "  -- Recommended port is$pink 2096$cyan Ok" okokokok;
./setup.sh /usr/local/webmin;

ufw allow 2096
