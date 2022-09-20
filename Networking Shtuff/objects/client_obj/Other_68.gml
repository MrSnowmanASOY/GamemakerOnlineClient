// Recive Packets from host
packetype = ds_map_find_value(async_load,"type")

switch(packetype)
 {
	case network_type_data:
		// Create user buffer
		buffer = ds_map_find_value(async_load,"buffer")
		buffer_seek(buffer,buffer_seek_start,0)
		cpr(buffer)
	break;
 }