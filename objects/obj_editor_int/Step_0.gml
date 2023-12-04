#region

//grid_x = floor(mouse_x / GRID_SIZE);
//grid_y = floor(mouse_y / GRID_SIZE);

grid_x = floor((mouse_x / iso_width) + (mouse_y / iso_height));
grid_y = floor((mouse_y / iso_height) - (mouse_x / iso_width));


grid_x = clamp(grid_x, 0, ds_grid_width(ds_terrain_data)-1);
grid_y = clamp(grid_y, 0, ds_grid_height(ds_terrain_data)-1);

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
		current_sprite = global.cell_sprites[current_part];
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
if(keyboard_check(vk_control)){
	if(keyboard_check(ord("W"))) cy -=10;
	if(keyboard_check(ord("S"))) cy +=10;
	if(keyboard_check(ord("A"))) cy -=10;
	if(keyboard_check(ord("D"))) cy +=10;

	if (keyboard_check(ord("W")) ||keyboard_check(ord("S")) || keyboard_check(ord("A"))||keyboard_check(ord("D")) ){
		camera_set_view_pos(view_camera[0],cx,cy);
	}
}
#endregion

#region TOGGLE DISPLAY

if (keyboard_check_pressed(vk_tab)) display_all_heights = !display_all_heights;
#endregion

#region save /load/ create/delete

if(keyboard_check_pressed(vk_f5))battle_map_list[| current_map_number] = scr_save_map(current_map_number, ds_terrain_data);

#endregion

#region LOAD MAP
//dont need to run this code if there are no saved battle maps

if (ds_list_size(battle_map_list) > 0){


		//LOAD PREVIOUS MAP
		if keyboard_check_pressed( ord("Q") ){
			//change map nunber
			if (current_map_number > 0) current_map_number --;
			else current_map_number = ( ds_list_size(battle_map_list) - 1);

			//Load grid from battle map list
			scr_load_map(current_map_number, ds_terrain_data, battle_map_list);
		}else{
			//LOAD NEXT MAP
			if keyboard_check_pressed( ord("E")) {
				if (current_map_number + 1) < ds_list_size(battle_map_list) current_map_number ++;
				else current_map_number = 0;

			scr_load_map(current_map_number, ds_terrain_data, battle_map_list);

			}
		}
	
}

#endregion



#region CHANGE THE HEIGHT

if(keyboard_check(vk_shift)){
	
	#region Decrease Grid Height rows
	if(keyboard_check_pressed(ord("W"))){
		var grid_h = ds_grid_height(ds_terrain_data);
		
		if(grid_h>1){
			for(var xx = 0;xx < ds_grid_width(ds_terrain_data); xx++){
				var list_to_destroy = ds_terrain_data[# xx, (grid_h -1)];
				ds_list_destroy(list_to_destroy);
			}
			
			ds_grid_resize(ds_terrain_data,ds_grid_width(ds_terrain_data),grid_h-1);
		}
	}
	#endregion
		
	#region Increase Grid Height rows
	
	if(keyboard_check_pressed(ord("S"))){
		var yy = ds_grid_height(ds_terrain_data);
		var grid_h = yy+1;
		ds_grid_resize(ds_terrain_data,ds_grid_width(ds_terrain_data),grid_h);
		
		
	
		for(var xx = 0; xx< ds_grid_width(ds_terrain_data); xx++){
			var list = ds_list_create();

			for(var i =0; i<e_tile_data.last;i++){
				if(i==e_tile_data.floor_index) list[| i] = 1; else list[| i] = 0;
			}
			
			ds_terrain_data[# xx, yy]= list;
		
	}
	}
	
	#endregion
	
	#region Decrease Grid width columns
	if(keyboard_check_pressed(ord("A"))){
		var xx = ds_grid_width(ds_terrain_data)-1;
		
	if(xx>0){
		for(var yy = 0;yy < ds_grid_height(ds_terrain_data); yy++){
			var list_to_destroy = ds_terrain_data[# xx, yy];
			ds_list_destroy(list_to_destroy);
		}
			
		ds_grid_resize(ds_terrain_data,xx,ds_grid_height(ds_terrain_data));
	}
	}
	
	#endregion
	
	#region Increase Grid width columns
	
	if(keyboard_check_pressed(ord("D"))){
		var xx = ds_grid_width(ds_terrain_data);
		var grid_w = xx+1;
		ds_grid_resize(ds_terrain_data,grid_w,ds_grid_height(ds_terrain_data));
		
	
		for(var yy = 0;yy < ds_grid_height(ds_terrain_data); yy++){
			var list = ds_list_create();
			
			for(var i =0; i<e_tile_data.last;i++){
				if(i==e_tile_data.floor_index) list[| i] = 1; else list[| i] = 0;
			}
			
			ds_terrain_data[# xx, yy]= list;
		
		}
	}
}
	
	#endregion

#endregion

#region change2


	if(keyboard_check_pressed(ord("O"))){
		if(current_height+1)<max_height current_height++;
		else current_height =0;
	}
	if(keyboard_check_pressed(ord("L"))){
		if(current_height >0) current_height--;
		else current_height = (max_height-1);
	}



#endregion

