class TestJob < ActiveJob::Base
  queue_as 'testjobs'

  def perform(a,b)
    puts "hello #{a},#{b}"
  end
end

