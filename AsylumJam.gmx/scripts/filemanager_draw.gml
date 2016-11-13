var xx = x;
var yy = y + windowHeight;
var backgroundColor = c_ltgray;
var textColor = c_black;
var outlineColor = c_black;

var filenameFont = fnt_console; //todo: actual font

window_draw();

// draw background panel

// shadow
draw_set_color(c_black);
draw_set_alpha(0.3);
draw_rectangle(x+4, y+4, x+windowWidth+4,yy+height+4,0);
draw_set_alpha(1);
draw_outlined_pane(xx, yy, xx+windowWidth-1, yy+height,backgroundColor,outlineColor,4);

// start drawing files, natch.
var fileSX = xx + padding;
var fileSY = yy + padding;

draw_set_font(filenameFont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var inBetweenW = 0;
for (var i = 0; i < filesSize; i++) {
    var w = string_width(files[i]);
    if (w > inBetweenW) {
        inBetweenW = w;
    }
}

var runningW = 0;
var runningH = 0;
for (var i = 0; i < filesSize; i++) {
    if (runningW + inBetweenW > windowWidth - padding*2) {
        runningW = 0;
        runningH += sprite_get_height(spr_file);
        runningH+= betweenPad;
        runningH += string_height(files[i]);   
    }
    draw_sprite(spr_file, 0, fileSX+runningW+inBetweenW/2, fileSY+runningH);
    draw_set_color(textColor);
    draw_text(fileSX+runningW+inBetweenW/2, fileSY+runningH+sprite_get_height(spr_file), files[i]);
    
    runningW += inBetweenW;
    
    runningW+=betweenPad;
    
    
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
