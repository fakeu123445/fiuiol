#!/bin/sh

#请修改为自己的UUID
export UUID=61e3ee1a-0cc2-4a6b-b6d1-76724ed23aee

#请修改为自己设置的伪装站，不要带https://
export ProxySite=gamingerox.com

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'
