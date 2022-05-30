client = network_create_socket(network_socket_tcp);
network_connect(client,"10.11.52.27",64198);

client_buffer = buffer_create(1024,buffer_fixed,1); 

