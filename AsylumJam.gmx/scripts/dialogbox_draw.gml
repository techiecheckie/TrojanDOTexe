dialogbox_step();

var textboxColor = c_white;
var backgroundColor = c_ltgray;
var textColor = c_black;

var xx = x;
var yy = y + windowHeight;

var totalHeight = areaHeight+areaY*2;
var totalWidth = windowWidth-1;
if (ds_list_size(buttons) > 0) {
    totalHeight += buttonHeight + buttonPadding *2;
}

if (!surface_exists(surf)) {
    surf = surface_create(areaWidth, areaHeight);
}

if (!surface_exists(buttonSurf)) {
    buttonSurf = surface_create(buttonsWidth, buttonHeight);
}
surface_set_target(surf);
draw_clear_alpha(textboxColor, 1);
draw_set_color(textColor);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_ext(padding, -scrollPos * scrollScale+padding, text, -1, textWidth);
surface_reset_target()
draw_set_color(backgroundColor);
draw_rectangle(xx,yy,xx+windowWidth-1,yy+totalHeight,false);
draw_surface(surf, xx+(windowWidth/2 - areaWidth/2), yy+areaY);

draw_set_color(textColor);
draw_rectangle(xx+(windowWidth/2 - areaWidth/2), yy+areaY,xx+(windowWidth/2 + areaWidth/2),yy+areaY+areaHeight,1);
draw_rectangle(xx, yy, xx+windowWidth-1,yy+totalHeight,1);

var areaRight = xx+(windowWidth/2 + areaWidth/2);
var scrollbarHeight = areaHeight / textHeight;

if (scrollScale > 0) {
    // draw the scrollbar
    draw_rectangle(areaRight, yy+areaY, areaRight+8, yy+areaY+areaHeight,0);
    draw_set_color(c_white);
    draw_rectangle(areaRight+1, yy+areaY+scrollPos*(areaHeight*scrollbarHeight), areaRight+7, yy+areaY+(scrollPos*(scrollbarHeight*areaHeight))
    +(scrollbarHeight*areaHeight), 0);
}

// draw buttons
dialogbox_draw_buttons();
if (ds_list_size(buttons) > 0) {
    draw_surface(buttonSurf, xx + totalWidth/2 - buttonsWidth/2, yy+areaHeight+areaY*2);
}

draw_set_color(c_white);

window_draw();



