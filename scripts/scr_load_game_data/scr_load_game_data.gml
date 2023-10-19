// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_load_game_data(){
	ini_open("battle_map_string.ini");
	total_maps= ini_read_real("Total Maps","value",total_maps);
	show_debug_message(total_maps)
	for(var i =0; i<total_maps;i++){
		var str = ini_read_string("Data String", string(i),"");
		battle_map_list[| i]= str;
		show_debug_message(str);
	}
	ini_close()
	show_debug_message("?-------?",ds_list_size(battle_map_list),"");
	if(ds_list_size(battle_map_list)>0){	
		show_debug_message("?-------");
		scr_load_map(0,ds_terrain_data,battle_map_list);
	}

}