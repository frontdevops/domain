server {
    listen %%LISTEN%%:80;
    server_name www.%%DOMAIN%%;
    rewrite ^/(.*)$ http://%%DOMAIN%%/$1 permanent;
}

server {
    listen %%LISTEN%%:80;

	set $sname %%DOMAIN%%;
	set $root "/www/sites/$sname/www";

    server_name %%DOMAIN%%;
    root $root;

    index index.htm index.html index.php;

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
		include fastcgi.conf;
		fastcgi_param  SCRIPT_FILENAME $root/$fastcgi_script_name;
    }
}

#EOF#