var xx = argument0;
var yy = argument1;

// draw all the buttons
if (ds_list_size(buttons) > 0) {

    var currentHovering = -1;

    for (var i = 0; i < ds_list_size(buttons); i++ ) {
        var b = ds_list_find_value(buttons, i);
        b.active = 0;
        
            if (point_in_rectangle(mouse_x, mouse_y, xx+b.x, yy, xx + b.x + b.w+b.pad*2, yy+buttonHeight)) {
                // we're hovering in this button.
                currentHovering = i;
            }
        
    }
    
    if (currentHovering != -1) {
        var button = ds_list_find_value(buttons, currentHovering);
        button.active = 1;
        if (mouse_check_button(mb_left)) {
            button.active = 2;
        }
        if (mouse_check_button_released(mb_left)) {
            if (script_exists(button.script)) {
                script_execute(button.script);
            }
            else {
                show_message("Pressed button " + button.text);
            }
        }
    }
    
    for (var i = 0; i < ds_list_size(buttons); i++ ) {
        var b = ds_list_find_value(buttons, i);
        
        if (b.active == 0)
            draw_sprite_bar(spr_button, xx + b.x, yy, b.w + b.pad*2);
        else if (b.active == 1) {
            draw_sprite_bar(spr_button_hover, xx + b.x, yy, b.w + b.pad*2);
        }
        else {
            draw_sprite_bar(spr_button_hover, xx + b.x, yy, b.w + b.pad*2);
        }
        /*draw_set_color(c_black);
        draw_rectangle(b.x, 0, b.x + b.w + b.pad*2, buttonHeight,0);*/
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(xx + b.x + b.pad, yy + buttonHeight/2, b.text);
    }
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    
}
