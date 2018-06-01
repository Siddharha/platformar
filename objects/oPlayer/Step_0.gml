/// @description Update Loop

//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


//Calculate Movement
var move = key_right-key_left;			//Get Direction for key..

hsp = move*walksp;
	
vsp = vsp+grv;


//Jump
if(place_meeting(x,y+1,oWall)||place_meeting(x,y+1,oLift)){

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
	
}else{

x = x+hsp;

}

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


if(place_meeting(x,y+vsp,oLift)){
		
	while(!place_meeting(x,y+sign(vsp),oLift)){
			y=y+sign(vsp);
			//y = oLift.y-sprite_height;
		}
	vsp = 0;
	y = oLift.y-(sprite_height/2)-(oLift.sprite_height/2)
	

}

if(y>room_height+sprite_height){
	x = 81
	y =911
	image_xscale = 1
}
