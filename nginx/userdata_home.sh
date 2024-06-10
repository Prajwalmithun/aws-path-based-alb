#!/bin/bash

# Install nginx
sudo dnf install -y nginx

# Enable and start it 
sudo systemctl enable nginx
sudo systemctl start nginx 

# Add the HTML content
cat << EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
<title> Home Section </title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>This is Home Page </h1> 
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
EOF

# Restart the nginx 
sudo sytemctl restart nginx
