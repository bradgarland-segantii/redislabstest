web:      bundle exec puma -p $PORT -C config/puma.rb
clock:    bundle exec clockwork clock.rb
#resque:   env RESQUE_TERM_TIMEOUT=9 TERM_CHILD=1 QUEUE=\* bundle exec rake resque:work
#resquepool:   env RESQUE_TERM_TIMEOUT=9 TERM_CHILD=1 bundle exec resque-pool
resquescheduler:   env RESQUE_SCHEDULER_INTERVAL=1 bundle exec rake resque:scheduler
#downloadholdings:  bundle exec rake sexi:api:holdings:download_continuously
# log:    tail -f log/development.log
# web:    bundle exec thin start -p $PORT
# web:    bundle exec unicorn -p $PORT -c ./config/unicorn.rb
