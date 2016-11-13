///console_window_draw()
var xx = x;
var yy = y+windowHeight;
    if __c {
        // draw the console background
        draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(xx, yy, xx+windowWidth-1, yy+__ch, false);
        
        draw_set_font(fnt_console);
        draw_set_halign(fa_left);
        draw_set_halign(fa_top);
        draw_set_color(c_white);
        draw_set_alpha(1);
        
        for(var i =0; i<= __cnol; i++) {
            draw_set_color(__cc[i]);
            draw_text(xx+5, yy+i*__clh, __cl[i]);
        }
        
        var _caretx = 5 + string_width('C:\' + filepath + '> ' + keyboard_string);
        var _caretx2 = _caretx + string_width('w');
        
        if (__cticker >= room_speed / 2) {
            draw_set_color($444444);
            draw_rectangle(xx+_caretx, yy+__ch - __clh, xx+_caretx2, yy+__ch, false);
        }
        
        draw_set_color(c_white);
        draw_text(xx+5, yy+__ch - __clh, 'C:\' + filepath + '> ' + keyboard_string+ __ctickerafter);
        
        // draw the window bar
        window_draw(xx, yy);
        
    }
