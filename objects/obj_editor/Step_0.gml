#region

//grid_x = floor(mouse_x / GRID_SIZE);
//grid_y = floor(mouse_y / GRID_SIZE);

grid_x = floor((mouse_x / iso_width) + (mouse_y / iso_height));
grid_y = floor((mouse_y / iso_height) - (mouse_x / iso_width));


grid_x = clamp(grid_x, 0, hcells - 1);
grid_y = clamp(grid_y, 0, vcells - 1);

#endregion

#region CHANGE

if (keyboard_check_pressed(vk_right)){
	if (keyboard_check(vk_shift)==false){
		if(new_index + 1)< sprite_get_number(current_sprite) new_index ++;
		else new_index =0;

	}
	else {
		//new_index = (sprite_get_number(spr_pasto1) -1);
		#region change tile part
		if(current_part +1) <= e_tile_data.decoration_index current_part++;
		else current_part = 0;
		current_sprite = global.cell_sprites[current_part];
		new_index =1;
		#endregion
	}
}
if (keyboard_check_pressed(vk_left)){
	if (keyboard_check(vk_shift)==false){
		if(new_index > 0) new_index --;
		else new_index = (sprite_get_number(current_sprite)-1);

	}
	else {
		//new_index = (sprite_get_number(spr_pasto1) -1);
		
		if(current_part -1) >=0 current_part -- ;
		else current_part = e_tile_data.decoration_index;
		current_sprite = gloal.cell_sprites[current_part];
		new_index =1;
	}
}


#endregion




#region PAINT THE MAP

if (mouse_check_button(mb_left)){
	//ds_terrain_data[# grid_x, grid_y] = new_index;
	var list =ds_terrain_data[# grid_x,grid_y];
	list[| current_part]= new_index;
	list[| e_tile_data.height]= current_height;
}


#endregion

#region MOVE THE CAMERA
if(keyboard_check(ord("W"))) cy -=10;
if(keyboard_check(ord("S"))) cy +=10;
if(keyboard_check(ord("A"))) cy -=10;
if(keyboard_check(ord("D"))) cy +=10;

if (keyboard_check(ord("W")) ||keyboard_check(ord("S")) || keyboard_check(ord("A"))||keyboard_check(ord("D")) ){
	camera_set_view_pos(view_camera[0],cx,cy);
}
#endregion

#region TOGGLE DISPLAY

if (keyboard_check_pressed(vk_tab)) display_all_heights = !display_all_heights;
#endregion

#region save /load/ create/delete

if(keyboard_check_pressed(vk_f5))battle_map_list[| current_map_number] = scr_save_map(current_map_number, ds_terrain_data);

#endregion


#region CHANGE THE HEIGHT

if(keyboard_check_pressed(vk_up)){
	if(current_height +1)< max_height current_height ++;
	else current_height =0;
}
if(keyboard_check_pressed(vk_down)){
	if(current_height >0)current_height --;
	else current_height =(max_height -1);
}
#endregion