function kill_server --argument port
     for pid in (lsof -i TCP:$port | awk '/LISTEN/{print $2}')
         echo -n "Found server for port $port with pid $pid: "
         kill -9 $pid; and echo "killed."; or echo "could not kill."
     end
end
