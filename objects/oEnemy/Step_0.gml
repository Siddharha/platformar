/// @description Update Loop

vsp = vsp+grv;


		hsp = -sign(distance_to_object(oPlayer))*1;
//Horizontal 

if(!place_meeting(x+sign(hsp),y,oPlayer)){
			
			//show_message("hi");
if(place_meeting(x+hsp,y,oWall)){
		
		while(!place_meeting(x+sign(hsp),y,oWall)){
		
		
		x=x+sign(hsp);
		
		}
		
		
	hsp = 0;
}

x = x+hsp;

}else{
hsp = 0;
}


//Virtical
if(place_meeting(x,y+vsp,oWall)){
		
		while(!place_meeting(x,y+sign(vsp),oWall)){
			y=y+sign(vsp);
		
		}
	vsp = 0;

}

y = y+vsp;



			
			