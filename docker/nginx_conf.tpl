server {

   listen 80 default;
   access_log /var/log/access.log;
   root /usr/share/nginx/html;

   index index.php;

   location / {
      try_files $uri $uri/ /index.php;
   }

   location ~ \.php$ {
      try_files $uri =404;
      fastcgi_pass fastcgiconturi;
      fastcgi_index index.php;
      fastcgi_param  SCRIPT_FILENAME    $document_root$fastcgi_script_name;
      include /etc/nginx/fastcgi_params;
   }

}

