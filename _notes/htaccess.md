config www to none-www
http -> to https

.htaccess

RewriteCond %{HTTPS} off
	RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
	RewriteRule ^(.*)$ http://%1/$1 [R=301,L]
	
	RewriteCond %{HTTPS} on
	RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
	RewriteRule ^(.*)$ https://%1/$1 [R=301,L]
	
	RewriteCond %{HTTPS} off
	RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}