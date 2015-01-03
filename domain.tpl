server {
    listen %%LISTEN%%:80;
    server_name www.%%DOMAIN%%;
    rewrite ^/(.*)$ http://%%DOMAIN%%/$1 permanent;
}

server {
    listen %%LISTEN%%:80;
    server_name %%DOMAIN%%;

	set $sname %%DOMAIN%%;
	set $root "/www/sites/$sname/www";

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

server {
    listen %%LISTEN%%:80;
    server_name %%DOMAIN%%;

	set $sname %%DOMAIN%%;

    set $subdomain "";
    if ($host ~* ^([a-z0-9\-\.]+)\.majorov\.su$) {
        set $subdomain $1;
    }
    set $root "/www/sites/$sname/$subdomain";

    root $root;
    index index.php index.htm index.html;

    #add_header Access-Control-Allow-Origin "";

    location ~ \.php$ {
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $root/$fastcgi_script_name;
    }
}

#EOF#