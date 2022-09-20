// Setting global enums
enum network
{
	client_establish,
	client_disconnect,
	client_connect
}
// Define IP
ip = get_string("Enter server IP","192.168.88.214")
port = get_integer("Enter server port",25565)
username = get_string("What is your username?","Snowfall")

// Create Client ID
clientID = network_create_socket(network_socket_tcp)

// Connect to server
network_connect(clientID,ip,port)

// Create user buffer
client_buffer = buffer_create(1024,buffer_fixed,1)

// Create socket list
socketlist = ds_map_create()
