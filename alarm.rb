class Buzz_Buzz
    def curr_time
        tim=Time.now
        @@hour=tim.hour
        @@min=tim.min
    end
   def alarm_req(ho,min)
        @@ho=ho
        @@minr=min
   end
   def alarm_set
      if @@hour==@@ho
          hour=0
      end
      if @@hour>@@ho
        to_24=24-@@hour
        hour=to_24+@@ho
      end
      
      if @@hour<@@ho
        hour=@@ho-@@hour
      end
      
      if @@min==@@minr
        min=0
      end
    
      if @@min>@@minr   
        to_60=60-@@min
        min=to_60+@@minr
        hour=hour-1
      end
    
      if @@min<@@minr
      min=@@minr-@@min
      end
      sec=(hour*3600)+(min*60)
      sleep(sec)
      puts "wake up !!"
       system "vlc tune.mp3"
      #   puts "HourL: #{hour} MinL: #{min} totalseL:#{sec}"
   end
   
end

puts "Set Alarm "
puts "Wake Up Hour: "
ho=Integer(gets)
puts "Minutes: "
mi=Integer(gets)
obj=Buzz_Buzz.new
obj.curr_time
obj.alarm_req(ho,mi)
obj.alarm_set