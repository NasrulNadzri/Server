require'socket'

# listen and bind are involved in TCPServer. initialze
server_socket=TCPServer.new '192.168.110.128 ',57175

client, client_sockaddr=server_socket.accept

data= client.recvfrom( 20 )[0].chomp
puts "Nas say'#{data}'"

sleep 1

server_socket.close

# Server.rb
