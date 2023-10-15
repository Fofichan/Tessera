#region
hcells = 10;
vcells = 10;

#macro GRID_SIZE 16

ds_terrain_data = ds_grid_create(hcells, vcells);

for (var _yy = 0; _yy < vcells; _yy ++){
	for( var _xx = 0; _xx < hcells; _xx ++){
		
		// set all cell values to "1" - this is the image index of spr_floor that we are going to draw
		ds_terrain_data[# _xx, _yy] = 1
	}	
}

#endregion

#region EXTRA VARIABLES

grid_x = 0;
grid_y = 0;
new_index = 1;
iso_width = sprite_get_width(spr_iso_width_height);
iso_height = sprite_get_height(spr_iso_width_height);


#endregion