function cpr(buffer){
	picker = buffer_read(buffer,buffer_u8)
	switch(picker)
		{
			case network.client_establish:
				// Decaler socks as the temp variable for reading the buffer
				var _socks = buffer_read(buffer,buffer_u8)
				global.mysocks = _socks
				
				// Turn username into a buffer for the server
				buffer_seek(client_buffer,buffer_seek_start,0)
				buffer_write(client_buffer,buffer_u8,network.client_establish)
				buffer_write(client_buffer,buffer_string,username)
				// Send the users username to the server
				network_send_packet(clientID,client_buffer,buffer_tell(client_buffer))
				// Sends a message saying the user has been connected to the server
				show_message("Socks have been found."+" Have fun "+ username + ".")
				break;
		}
}