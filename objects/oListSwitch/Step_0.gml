/// @description LiftSwitch Action
// You can write your code in this editor

key_E = keyboard_check_pressed(ord("E"));

if(distance_to_object(oPlayer)<10){
	
	draw_hint = 1
	if(key_E){
	//show_message("Ready to On Switch")
	image_speed = 0;
	if(image_index ==0){
	image_index =1
	oLift.path_speed = 0.3
	oLift.path_endaction = path_action_reverse
	}else{
		image_index =0
		oLift.path_speed = 0
	
	}
	}
}else{
draw_hint = 0	
}