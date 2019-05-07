if mouse_check_button_pressed(mb_left)
{
	if dragged == false && lock = false
	{
		audio_play_sound(sndPickup,5,false);
		dragged = true;
		follow = other;
		other.current = self;
	}else if dragged == true && lock = false
	{
		audio_play_sound(sndMenu_screen_mouse_over,5,false);
		dragged = false;
		follow = noone;
		other.current = noone;
	}
}