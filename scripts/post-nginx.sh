echo -e "\n--- POST-NGINX ---\n"
sudo rm -rf /etc/nginx/sites-available/default
sudo rm -rf /etc/nginx/sites-enabled/default
cd ~
echo 'server {
    charset  utf-8;

    index    index.php index.html index.htm;
    set      $basepath "/vagrant/www";
    set      $domain $host;

    # check one name domain for simple application
    if ($domain ~ "^(.[^.]*)\.test$") {
        set $domain $1;
        set $rootpath "${domain}/public/";
        set $servername "${domain}.test";
    }

    # check multi name domain to multi application
    if ($domain ~ "^(.*)\.(.[^.]*)\.test$") {
        set $subdomain $1;
        set $domain $2;
        set $rootpath "${domain}/${subdomain}/www/";
        set $servername "${subdomain}.${domain}.test";
    }

    server_name $servername;

    error_log "/var/log/nginx/server.test.error.log";

    root $basepath/$rootpath;

    # laravel setup
    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    # allow execute all php files
    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;

        fastcgi_pass unix:/run/php/php7.2-fpm.sock;
        fastcgi_index /index.php;

        include fastcgi_params;
        fastcgi_split_path_info       ^(.+\.php)(/.+)$;
        fastcgi_param PATH_INFO       $fastcgi_path_info;
        fastcgi_param PATH_TRANSLATED $document_root$fastcgi_path_info;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    }

    # turn off cache
    location ~* ^.+\.(js|css)$ {
        expires -1;
        sendfile off;
    }

    # disallow access to apache configs
    location ~ /\.ht {
        deny all;
    }

    # disallow access to git configs path
    location ~ /\.git {
        deny all;
    }
}' > devhosts

sudo mv ~/devhosts /etc/nginx/sites-available/devhosts
sudo ln -s /etc/nginx/sites-available/devhosts /etc/nginx/sites-enabled/devhosts
sudo service nginx restart > /dev/null
