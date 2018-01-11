#! /bin/bash
bundle install
sleep 5
rake db:create db:migrate

if [ -e /myapp/tmp/pids/server.pid ]
then
    rm /myapp/tmp/pids/server.pid
fi    

rails server