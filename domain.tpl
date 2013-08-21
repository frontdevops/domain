server {
    listen  80;
    server_name www.%%DOMAIN%%;
    rewrite ^/(.*)$ http://%%DOMAIN%%/$1 permanent;
}


server {
    listen %%LISTEN%%;
    server_name %%DOMAIN%%;

    index index.htm index.html index.php;

    location / {
	root /www/sites/%%DOMAINDIR%%/www;
    }

    location ~ \.php$ {
	include fastcgi_params;
	fastcgi_param  SCRIPT_FILENAME  /www/sites/%%DOMAINDIR%%/www/$fastcgi_script_name;
    }
}

#EOF#