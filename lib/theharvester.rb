require 'theharvester/version'
require 'socket'

module Theharvester

    def self.whoami
      "I'm the harvester and I'm going to find out about your site, the links and the API calls"
    end

    def self.start(url, username, password)
      
    end

    def self.listen_on_port(port=4000)
      server = TCPServer.open(port)   # Socket to listen on port 2000
      loop {                          # Servers run forever
        Thread.start(server.accept) do |client|
          client.puts(Time.now.ctime) # Send the time to the client
          client.puts 'Closing the connection. Bye!'
          puts 'Received:' + client.recv(1024)
          client.close                # Disconnect from the client
        end
      }
    end

end
