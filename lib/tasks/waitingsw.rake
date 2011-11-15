require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")

namespace :wsw do
  desc "ping each switches"
  task(:pingall => :environment) do
    while true
      #Switch.each {|i|i.ping}
      @switches=Switch.all
      @switches.each{|switch|switch.ping}
      sleep(10)
    end
  end
end
