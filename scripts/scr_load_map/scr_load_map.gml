function scr_load_map(map_number, grid_to_copy_to, list_of_battle_maps){

var grid_to_copy_from = ds_grid_create(1, 1); //the width/height doesn't matter at the moment as ds_grid_read will resize it anyway

if (list_of_battle_maps[| map_number] != undefined) && (list_of_battle_maps[| map_number] != ""){
	ds_grid_read(grid_to_copy_from, list_of_battle_maps[| map_number]);

//Destroy all the lists in ds_terrain and then resize it - this allows for differently-sized maps

	//Grab the width/height of the temporary grid
	var grid_width = ds_grid_width(grid_to_copy_from);
	var grid_height = ds_grid_height(grid_to_copy_from);


	//Resize ds_terrain_data
		ds_grid_resize(grid_to_copy_to, grid_width, grid_height);

	//Convert the strings into lists holding data and store that list in the relevant cell of grid_to_copy_
	for (var yy = 0; yy < grid_height; yy ++){
		for (var xx = 0; xx < grid_width; xx ++){
		var list = ds_list_create();
		var list_str = grid_to_copy_from[# xx, yy]; //grab the string from the cell
		ds_list_read(list, list_str); //convert the string back into our list data

		grid_to_copy_to[# xx, yy] = list;
		show_debug_message(list);
	
		}
	}
	show_debug_message("Map " + string(map_number) + " Loaded");
	ds_grid_destroy(grid_to_copy_from);

	return grid_to_copy_to;
}
	else{

	show_debug_message("Map failed to load");
	return grid_to_copy_to;

}
}