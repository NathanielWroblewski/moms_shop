#!/bin/bash
 
#import the latest dump from production
heroku pgbackups:capture --expire --app cecil-production
curl -o latest.dump `heroku pgbackups:url --app cecil-production`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -d mums_shop_development latest.dump