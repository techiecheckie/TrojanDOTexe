var textboxColor = c_white;
var backgroundColor = c_ltgray;
var textColor = c_black;

var xx = x;
var yy = y + windowHeight;

var totalHeight = areaHeight+areaY*2;
var totalWidth = windowWidth-1;

if (!ds_exists(buttons, ds_type_list)) {
    exit;
}
if (ds_list_size(buttons) > 0) {
    totalHeight += buttonHeight + buttonPadding *2;
}

if (!surface_exists(surf)) {
    surf = surface_create(areaWidth, areaHeight);
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

var scrollbarX = xx+(windowWidth/2 + areaWidth/2);
var scrollbarY = yy + areaY;
var scrollbarWidth = 8;
var scrollbarHeight = (areaHeight / textHeight)*areaHeight;

if (scrollScale > 0) {
    
    // draw the scrollbar
    draw_set_color(textColor);
    draw_rectangle(scrollbarX, yy+areaY, scrollbarX+scrollbarWidth, yy+areaY+areaHeight,0);
    draw_set_color(c_white);
    draw_rectangle(scrollbarX+1, scrollbarY+scrollPos*(areaHeight-scrollbarHeight), scrollbarX+scrollbarWidth-1, scrollbarY+scrollPos*(areaHeight-scrollbarHeight)+scrollbarHeight, 0);
    dialogbox_scroll(xx, yy, scrollbarX, scrollbarWidth);
}

// draw buttons
if (ds_exists(buttons, ds_type_list)) {
    dialogbox_draw_buttons(xx + totalWidth/2 - buttonsWidth/2, yy+areaHeight+areaY*2);
}
draw_set_color(c_white);

window_draw();



