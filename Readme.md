# Redislabs test

Steps to reproduce

bundle install

bundle exec ruby redislabstest.rb

press 'p' a few times to put jobs onto the queue

press 'g' to process 1 job off the queue

press 'q' to quit

QUEUE=\* rake resque:work

This fails and quits with the error:

NoMethodError: undefined message `slice!` for nil:NilClass
