///console_draw()

    if __c {
        draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(0, 0, display_get_gui_width(), __ch, false);
        
        draw_set_font(fnt_console);
        draw_set_halign(fa_left);
        draw_set_halign(fa_top);
        draw_set_color(c_white);
        draw_set_alpha(1);
        
        for(var i =0; i<= __cnol; i++) {
            draw_set_color(__cc[i]);
            draw_text(5, i*__clh, __cl[i]);
        }
        
        var _caretx = 5 + string_width('>' + keyboard_string);
        var _caretx2 = _caretx + string_width('w');
        
        if (__cticker >= room_speed / 2) {
            draw_set_color($444444);
            draw_rectangle(_caretx, __ch - __clh, _caretx2, __ch, false);
        }
        
        draw_set_color(c_white);
        draw_text(5, __ch - __clh, '>' + keyboard_string+ __ctickerafter);
    }
