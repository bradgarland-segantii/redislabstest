# Redislabs test

Steps to reproduce

`bundle install`

`bundle exec ruby redislabstest.rb`

press 'p' a few times to put jobs onto the queue

press 'g' to process 1 job off the queue. This will run ok

press 'q' to quit

`QUEUE=\* rake resque:work`

This fails and quits with the error:

`NoMethodError: undefined message ``slice!`` for nil:NilClass`

but if I change the resque_init.rb to use local redis, then the rake task above completes all the jobs.
