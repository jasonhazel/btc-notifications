require 'libnotify'
require 'date'
require 'active_model'
require 'bitstamp'


DELAY = 10

while true
  n = Libnotify.new do |notify|
    notify.summary    = DateTime.now.to_s
    notify.body       = "Last: XXX Ask: XXX Bid: XXX"
    notify.timeout    = 3         # 1.5 (s), 1000 (ms), "2", nil, false
    notify.urgency    = :low   # :low, :normal, :critical
    notify.append     = false       # default true - append onto existing notification
    notify.transient  = false        # default false - keep the notifications around after display
    # notify.icon_path  = "/usr/share/icons/gnome/scalable/emblems/emblem-default.svg"
  end
  n.show!


  sleep DELAY
end