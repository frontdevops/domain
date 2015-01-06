server {
    listen %%LISTEN%%:80;
    server_name www.%%DOMAIN%%;
    rewrite ^/(.*)$ http://%%DOMAIN%%/$1 permanent;
}

server {
    listen		%%LISTEN%%:80;
    server_name	%%DOMAIN%%;

	set $sname	%%DOMAIN%%;
	set $root	"/www/sites/$sname/www/public";

    root	$root;
    index	index.php index.htm index.html;

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
    }
}

server {
    listen		%%LISTEN%%:80;
    server_name	*.%%DOMAIN%%;

	set $sname	%%DOMAIN%%;
    set $subdomain "";
    if ($host ~* ^([a-z0-9\-\.]+)\.%%DOMAIN%%$) {
        set $subdomain $1;
    }
    set $root "/www/sites/$sname/$subdomain/public";

    root	$root;
    index	index.php index.htm index.html;

    #add_header Access-Control-Allow-Origin "";

    location ~ \.php$ {
        include fastcgi_params;
    }
}

#EOF#