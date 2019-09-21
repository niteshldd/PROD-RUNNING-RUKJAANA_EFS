# Start the PHP-FPM process
/usr/sbin/php-fpm7 -D
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start php-fpm7: $status" >> /var/log/script.log
  exit $status
fi
 
# Mount the NFS share
/bin/mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-35de27e4.efs.ap-south-1.amazonaws.com:/ /var/www/localhost/htdocs
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to mount NFS share: $status" >> /var/log/script.log
  exit $status
fi
 
# Add health check file
/bin/touch /var/www/localhost/htdocs/health.txt
 
# Change ownership of www root
/bin/chown -R nobody:nobody /var/www/localhost/htdocs
 
# Start the Apache process
/usr/sbin/httpd -D FOREGROUND
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start httpd: $status" >> /var/log/script.log
  exit $status
fi