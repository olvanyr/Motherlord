cunter += 0.05;

var next_room = room_next(room);

if cunter >= 1
{
	if room_exists(next_room)
	{
		room_goto_next();
	}else room_goto(rMenu);
}