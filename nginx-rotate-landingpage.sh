#!/bin/bash
DATAF=`date --date '1 days ago' +"%Y-%m-%d"`
set -xv

# resolvendo divergencias no git 

	ps aux | grep landing-pages | grep -v grep |  awk '{print $2}'| xargs -i kill -9 ;
          sleep 2;
        /etc/init.d/nginx stop ;
          sleep 2;
       	mv -v /var/log/nginx/access.log /var/log/nginx/access.log.$DATAF ;
          sleep 2;
      	mv -v /var/log/nginx/error.log /var/log/nginx/error.log.$DATAF ;
          sleep 2;
	mv -v /var/log/nginx/access_smsdwlapp.log /var/log/nginx/access_smsdwlapp.$DATAF ;
          sleep 2;
      	mv -v /var/log/nginx/access_smshome.log /var/log/nginx/access_smshome.log.$DATAF ;
          sleep 2;
      	mv -v /var/log/nginx/access_smspou.log /var/log/nginx/access_smspou.log.$DATAF ;
          sleep 2;
       	/etc/init.d/nginx start ;
          sleep 2;
	/etc/init.d/landing start;
set +xv

