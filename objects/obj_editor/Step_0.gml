#region

//grid_x = floor(mouse_x / GRID_SIZE);
//grid_y = floor(mouse_y / GRID_SIZE);

grid_x = floor((mouse_x / iso_width) + (mouse_y / iso_height));
grid_y = floor((mouse_y / iso_height) - (mouse_x / iso_width));


grid_x = clamp(grid_x, 0, hcells - 1);
grid_y = clamp(grid_y, 0, vcells - 1);

#endregion

#region Change new_index

if (keyboard_check_pressed(vk_right)){
	if (new_index > 0){
		new_index --;
	}
	else {
		new_index = (sprite_get_number(spr_pasto1) -1);
	}
}

#endregion

#region PAINT THE MAP

if (mouse_check_button(mb_left)){
	ds_terrain_data[# grid_x, grid_y] = new_index;
}


#endregion