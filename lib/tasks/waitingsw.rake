require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")

namespace (:wsw => :environment) do
  desc "ping each switches"
  task :pingall do
    puts "Pings all"
  end
end
