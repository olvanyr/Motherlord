/// @description Insert description here
// You can write your code in this editor


var text_option_w = string_width(text_option)
var text_option_h = string_height(text_option)
var c_text = make_color_rgb(225, 242, 254);
var c_overlap = make_color_rgb(37, 137, 189);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Background
var c = make_color_rgb(255, 60, 90);
draw_rectangle_color(0,0,room_width, room_height,c,c,c,c,0);


// Draw Title

draw_set_color(c_text)
draw_set_font(fTitle);
draw_text(half_width, gui_height/5,text_title);


// Draw Menu Options

draw_set_color(c_text)

if (mouse_detection(half_width - text_option_w, gui_height - gui_height/5 - text_option_h, half_width + text_option_w,gui_height - gui_height/5 + text_option_h))
{
	
	if play_snd == false
	{
		audio_play_sound(sndMenu_screen_mouse_over,5,false);
	}

	play_snd = true;
	if (device_mouse_check_button_pressed(0,mb_left))
	{
		audio_play_sound(sndStart,5,false);
		room_goto(rMenu);
	}
	draw_set_color(c_overlap);
}else play_snd = false;


if (keyboard_check_pressed(vk_enter))
{
	audio_play_sound(sndStart,5,false);
	room_goto(rMenu);
}

draw_set_font(fMenu);
draw_text(half_width, gui_height - gui_height/4, text_option);
