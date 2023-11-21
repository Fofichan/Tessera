#region SETUP TILE ENUMERATE
enum e_tile_data2{
	floor_index, 
	decoration_index,

}
#endregion
#region SETUP A GRID
hcells = 30;
vcells = 30;



ds_terrain_data = ds_grid_create(hcells, vcells);




for (var _yy = 10; _yy < vcells; _yy ++){
	for( var _xx = 0; _xx < hcells; _xx ++){
		
		// set all cell values to "1" - this is the image index of spr_floor that we are going to draw
		//ds_terrain_data[# _xx, _yy] = 1
		
		var list = ds_list_create();
		
		for (var i = 0; i< e_tile_data.last; i++){
			if (i == e_tile_data.floor_index) list[|i] =1; else list[|i]=0;
		}
		ds_terrain_data[# _xx, _yy] = list;
		show_debug_message(list);
	}	
}

#endregion

#region SETUP SPRITE ARRAY

global.cell_sprites[e_tile_data2.floor_index] =spr_pasto12;
global.cell_sprites[e_tile_data2.decoration_index] = spr_12;
//global.cell_sprites[e_tile_data.decoration_index] =spr_arbol;

#endregion
#region EXTRA VARIABLES

grid_x = 0;
grid_y = 0;
new_index = 1;
iso_width = sprite_get_width(spr_iso_width_height);
iso_height = sprite_get_height(spr_iso_width_height);


//total_width_iso = hcells * (iso_width / 2);
//total_height_iso = vcells * (iso_height / 2);

//center_x_iso = total_width_iso / 2;
//center_y_iso = total_height_iso / 2;

//center_x_iso = total_width_iso / 2;
//center_y_iso = total_height_iso / 2;

//start_draw_x = (camera_get_view_width(view_camera[0]) - total_width_iso) / 2;
//start_draw_y = (camera_get_view_height(view_camera[0]) - total_height_iso) / 2;


//camera_set_view_pos(view_camera[0], cx, cy);


cx = (iso_width/2)-(camera_get_view_width(view_camera[0])/2);
cy = -(camera_get_view_height(view_camera[0])/1000+100);
camera_set_view_pos(view_camera[0],cx,cy);


current_height =0;
max_height =12;

current_part = e_tile_data.floor_index;
current_sprite = global.cell_sprites[current_part];

display_all_heights =true;

current_map_number = 1;
battle_map_list = ds_list_create();

total_maps=0;


#endregion

scr_load_game_data_int();