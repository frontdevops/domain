server {
    listen %%LISTEN%%;
    server_name www.%%DOMAIN%%;
    rewrite ^/(.*)$ http://%%DOMAIN%%/$1 permanent;
}

server {
    listen %%LISTEN%%:80;
    server_name %%DOMAIN%%;

    index index.htm index.html index.php;
    root /www/sites/%%DOMAINDIR%%/www;

# Wordpress config example    
#    location / {
#        if (!-e $request_filename) {
#            rewrite ^(.*)$ /index.php;
#        }
#    }
#
#    location ~ \.tpl$ {
#        deny all;
#    }

    location ~ \.php$ {
		include fastcgi_params;
		fastcgi_param  SCRIPT_FILENAME /www/sites/%%DOMAINDIR%%/www/$fastcgi_script_name;
    }
}

#EOF#