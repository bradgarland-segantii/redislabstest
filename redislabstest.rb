require 'rubygems'
require './resque_init'
require './test_job'

puts 'Press p to put a job on the queue, g to get one off the queue, q to quit'
while s = STDIN.getc do
  if s == 'p'
    TestJob.perform_later('some','params')
  elsif s == 'g'
    klass, args = Resque.reserve('testjobs')
    if klass
      model = klass.perform(*args)
    else
      puts "No jobs found. press p to put one on the queue"
    end
  elsif s == 'q'
    exit
  end
end
