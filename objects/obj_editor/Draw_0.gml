for (var _yy = 0; _yy < vcells; _yy ++){
	for( var _xx = 0; _xx < hcells; _xx ++){
		
		#region DRAW CELL
		
		index = ds_terrain_data[# _xx, _yy];
		
		draw_x = (_xx - _yy) * (iso_width / 2);
		draw_y = (_xx + _yy) * (iso_height / 2);
		
		draw_sprite(spr_pasto1, index, draw_x, draw_y);
		//draw_sprite(spr_pasto1, index, draw_x, draw_y);
	
		#endregion
	
		#region TESTING - SHOW THE NUMBERS
		
		//draw_set_halign(fa_left);
		//draw_set_valign(fa_top);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_gray);
		draw_text(draw_x, draw_y, string(index));
	
		#region DRAW CURSOR
		
		if (_xx == grid_x && _yy == grid_y){
			draw_sprite(spr_iso_cursor, 0, draw_x, draw_y);
		}
		
		#endregion
		
	
	}
}




