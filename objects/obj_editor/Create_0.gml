#region SETUP TILE ENUMERATE
enum e_tile_data{
	floor_index, 
	decoration_index,
	height, 
	last,
}

#endregion
#region SETUP A GRID
hcells = 30;
vcells = 30;

#macro GRID_SIZE 16

ds_terrain_data = ds_grid_create(hcells, vcells);

for (var _yy = 0; _yy < vcells; _yy ++){
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

global.cell_sprites[e_tile_data.floor_index] =spr_pasto1;
global.cell_sprites[e_tile_data.decoration_index] =Sprite30;

#endregion
#region EXTRA VARIABLES

grid_x = 0;
grid_y = 0;
new_index = 1;
iso_width = sprite_get_width(spr_iso_width_height);
iso_height = sprite_get_height(spr_iso_width_height);

cx = (iso_width/2)-(camera_get_view_width(view_camera[0])/2);
cy = -(camera_get_view_height(view_camera[0])/4);
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

scr_load_game_data();