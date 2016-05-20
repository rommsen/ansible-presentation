# {{ ansible_managed }}
server {
    listen [::]:80;
    listen 80;

    root /var/www/html;

    index index.html;

    charset utf-8;

    location / {
        # try to serve file directly, fallback to index.html
        try_files $uri /index.html;
    }

    location ~ \.php$ {
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi.conf;
    }

    error_page 404 /404.html;

    error_page 500 502 503 504 /50x.html;

    error_log /var/log/nginx/error.log;
    access_log /var/log/nginx/access.log;

    location = /favicon.ico { log_not_found off; access_log off; }
    location = /robots.txt { log_not_found off; access_log off; }
}