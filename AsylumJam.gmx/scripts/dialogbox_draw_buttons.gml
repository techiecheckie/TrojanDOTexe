
// draw all the buttons
if (ds_list_size(buttons) > 0) {
surface_set_target(buttonSurf);
    draw_clear_alpha(c_white, 0);
    for (var i = 0; i < ds_list_size(buttons); i++ ) {
        var b = ds_list_find_value(buttons, i);
        
            
            
            draw_sprite_bar(spr_button, b.x, 0, b.w + b.pad*2);
            /*draw_set_color(c_black);
            draw_rectangle(b.x, 0, b.x + b.w + b.pad*2, buttonHeight,0);*/
            draw_set_color(c_white);
            draw_set_halign(fa_left);
            draw_set_valign(fa_middle);
            draw_text(b.x + b.pad, buttonHeight/2, b.text);
            
        
    }
    surface_reset_target();
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}
