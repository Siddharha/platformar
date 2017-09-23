/// @description Update Loop

//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


//Calculate Movement
var move = key_right-key_left;			//Get Direction for key..
hsp = move*walksp;
vsp = vsp+grv;
isInLand = false;
//Jump
if(place_meeting(x,y+1,oWall)){

if(key_jump){
	vsp = -7;
	isInLand = false;

	}
	
	isInLand = true;
}

//Horizontal Collision
if(place_meeting(x+hsp,y,oWall)){
		
		while(!place_meeting(x+sign(hsp),y,oWall)){
			x=x+sign(hsp);
		}
	hsp = 0;
	
}

x = x+hsp;

//Virtical Collision
if(place_meeting(x,y+vsp,oWall)){
		
		while(!place_meeting(x,y+sign(vsp),oWall)){
			y=y+sign(vsp);
		}
	vsp = 0;
	
}

y = y+vsp;

//Animations

if(isInLand){
	
	
	if(hsp==0){

if(!key_jump){
	sprite_index = sPlayer_ide;
	image_speed = 0.5;
	}else{
		sprite_index = sPlayer_jump;
	image_speed = 1;

	}
	}else{
	sprite_index = sPlayer;
	//image_index = sPlayer;
	image_xscale = sign(hsp);
	image_speed = 1;
	}
}

