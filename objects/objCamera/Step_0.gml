/// @description Update Camera


// Update Destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object positiio
x +=(xTo-x)/25;
y+=(yTo-y)/25;

//IUpdate camera view
camera_set_view_pos(cam,x-view_half_w,y-view_half_h);