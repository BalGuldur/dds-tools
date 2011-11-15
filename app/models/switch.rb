class Switch < ActiveRecord::Base
  def ping
  #  puts self.ipaddress
    resping = `ping #{self.ipaddress} -c 4 -i 0.2 | grep received` #-c count -i timeinterval between ping
    resping=resping.split(' ')
    if ('1'..'4').include?resping[3]
      self.status="online"
    else
      self.status="offline"
    end
    self.save
  end
end
