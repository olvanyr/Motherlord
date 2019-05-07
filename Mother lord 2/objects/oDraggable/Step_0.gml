
if dragged == true
{
	oWall.collision = true;
	x = follow.x;
	y = follow.y;
	
	depth = -1;
	move_snap(34,34);
	
	if mouse_wheel_down() || keyboard_check_pressed(ord("R"))
	{
		image_angle -= 90;
	}

	if mouse_wheel_up()
	{
		image_angle += 90;
	}
	
}

if dragged == false 
{
	depth = 0;
}

