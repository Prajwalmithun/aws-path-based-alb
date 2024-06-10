#!/bin/bash

# Install nginx
sudo dnf install -y nginx

# Enable and start it 
sudo systemctl enable nginx
sudo systemctl start nginx 

# Add the HTML content
cat << EOF > /usr/share/nginx/html/men.html
<!DOCTYPE html>
<html>
<head>
<title> Men Section </title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>This is Men Section!! </h1> 
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

# Make nginx redirections
cat << EOF > /etc/nginx/conf.d/redirects.conf
server {
    listen 80;
    server_name 127.0.0.1;  # Replace with your domain name or IP address

    location /men {
        rewrite ^/men$ /men.html permanent;
    }

    # Add other server configurations if needed
}
EOF

# Relaod the nginx 
sudo sytemctl reload nginx
