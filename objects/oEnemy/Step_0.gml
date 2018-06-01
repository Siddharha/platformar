/// @description Update Loop

vsp = vsp+grv;


		hsp = sign(oPlayer.x-x)*1;
		
		if(distance_to_object(oPlayer)<200){
		chessEnemy = true;
		}else if(distance_to_object(oPlayer)<400){
		chessEnemy = false;
		}
//Horizontal 

if(!place_meeting(x+sign(hsp),y,oPlayer)&&chessEnemy){
			
			//show_message("hi");
if(place_meeting(x+hsp,y,oWall)){
		
		while(!place_meeting(x+sign(hsp),y,oWall)){
		
		
		x=x+sign(hsp);
		
		}
		
	
	hsp = 0;
	
}

if((!place_empty(x+(sprite_width*sign(hsp)),y+1))){
x = x+hsp;
}

}else{
hsp = sign(x-other.x)*1;
}


//Virtical
if(place_meeting(x,y+vsp,oWall)){
		
		while(!place_meeting(x,y+sign(vsp),oWall)){
			y=y+sign(vsp);
		
		}
	vsp = 0;

}

y = y+vsp;





			
			