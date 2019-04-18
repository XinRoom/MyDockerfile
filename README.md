# Nextcloud php-fpm-alpine

Can diy nextcloud_path

`ENV NEXTCLOUD_PATH="/var/www"`

Under ubuntu, the www-data user uid is 33.  
Under alpine, the www-data user uid is 82.  
And under alpine, xfs user uid is 33.  

For unity into ubuntu, under alpine, www-data users are replaced by xfs.  
If you have no other use for xfs!  