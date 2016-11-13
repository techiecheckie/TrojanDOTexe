///console_init()
    
    draw_set_font(fnt_console);
    draw_set_halign(fa_left);
    draw_set_halign(fa_top);
    __clh = string_height('q_W|'); // console line height
    __cnol = 10; // number of lines
    __ch = (__clh + 1) * (__cnol + 1) + 5; // console draw height
    __cbtn = 192; // 192 is `/~ key, you can check to another if you need/want
    __c = false; // is visible
    __cticker = 0; // caret
    __ctickerafter = ''; // text after caret when moving with < >
    
    var i = 0;
    for(i=0; i<=__cnol; i++) {
        __cl[i] = ''; // each line, text
        __cc[i] = c_white; // each line, color
    }
    for(i=0; i<=10; i++) {
        __chis[i] = ''; // commands history
    }
    __chisp = 0; // current history pointer
    
    console_log("(C) M1cr050ft W1nd0w5. A11 R1ght5 Ar3 Tr0j4n's.", c_green);
    
