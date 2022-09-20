if !surface_exists(canvas){
	// create a surface the size of the room
	canvas = surface_create(room_width,room_height)
}

surface_set_target(canvas)
draw_circle(mouse_x,mouse_y,3,false)
surface_reset_target()
draw_surface(canvas,0,0)