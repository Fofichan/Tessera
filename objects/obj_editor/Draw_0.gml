for (var _yy = 0; _yy < ds_grid_height(ds_terrain_data); _yy ++){
	for( var _xx = 0; _xx < ds_grid_width(ds_terrain_data); _xx ++){
		
		#region DRAW CELL
		
		var list = ds_terrain_data[# _xx,_yy]
		
		//index = ds_terrain_data[# _xx, _yy];
		floor_ind = list[| e_tile_data.floor_index];
		height =list[| e_tile_data.height];
		
		draw_x = (_xx - _yy) * (iso_width / 2);
		//draw_y = (_xx + _yy) * (iso_height / 2);

		//draw_sprite(spr_pasto1, floor_ind, draw_x, draw_y);
		//draw_sprite(spr_pasto1, index, draw_x, draw_y);
	
		for (var draw_height =0 ; draw_height<= height;draw_height++){
			
			
			if((display_all_heights ==false && draw_height <= current_height) || (display_all_heights== true)){
				draw_y = (_xx + _yy) * (iso_height / 2) -(draw_height*(iso_height/2));
			//draw_sprite(spr_pasto1, floor_ind, draw_x, draw_y);
			
				var rgb_value = 150 + (draw_height * 9);
				var col = make_color_rgb(rgb_value,rgb_value,rgb_value);
				draw_sprite_ext(spr_pasto1,floor_ind,draw_x,draw_y,1,1,0,col,1);
			
				if(draw_height ==height){
					var spr =global.cell_sprites[e_tile_data.decoration_index];
					var index = list[|e_tile_data.decoration_index];
					draw_sprite_ext(spr,index,draw_x,draw_y,1,1,0,col,1);
				}

			}
				
				
			
		}
		#endregion
	
		#region TESTING - SHOW THE NUMBERS
		
		//draw_set_halign(fa_left);
		//draw_set_valign(fa_top);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_gray);
		if(_xx==grid_x && _yy==grid_y){
			for( var draw_height=0; draw_height<=current_height;draw_height++){
				draw_y =(_xx + _yy) * (iso_height / 2) -(draw_height*(iso_height/2));
				draw_sprite(spr_iso_cursor,0,draw_x,draw_y);
			}
		}
		//draw_text(draw_x, draw_y, string(floor_ind));
			
		//var list= ds_terrain_data[# _xx,_yy];
		//draw_text(draw_x,draw_y,string(list));
		#endregion
		
		#region DRAW CURSOR
		
		if (_xx == grid_x && _yy == grid_y){
			for(var draw_height =0; draw_height<=current_height;draw_height++){
				draw_y = (_xx+ _yy)* (iso_height/2) - (draw_height* (iso_height/2));
				draw_sprite(spr_iso_cursor, 0, draw_x, draw_y);
				if (current_part== e_tile_data.decoration_index){
					var spr = global.cell_sprites[current_part];
					draw_sprite_ext(spr,new_index,draw_x,draw_y,1,1,0,c_yellow,1);
		}


			}
		
	
	}
#endregion
		
}

}




