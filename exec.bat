#!upstart

#description "Upstart script for 144 MHz rtl_tcp"

#start on starting websdr
#stop on shutdown or stopped websdr
#respawn
#nice -1

#script
#    echo "Starting 144 MHz rtl_tcp.."
#    exec rtl_tcp -d 6 -f 143000000 -s 2048000 -g 30 -a 127.0.0.1 -p 5906 -b 3 -n 1000
#end script

exec rtl_tcp &
#exec rtl_tcp -d 0 -a 10.0.2.15 -p 1234 -f 146000000 -s 2048000 -b 3 -n 1000 &
#exec rtl_tcp -d 0 -a 10.0.2.15 -p 1234 -f 146000000 -s 2048000 -b 3 -n 1000 &

#exec rtl_tcp -d 0 -f 143000000 -s 2048000 -g 30 -a 192.168.1.56 -p 1234 -b 3 -n 1000 &

#exec rtl_tcp & -a 192.168.1.56 -p 1234 -b 3 -n 1000 &

cd ../dist11

sleep 5

#./websdr-rpi &
./websdr64 &

