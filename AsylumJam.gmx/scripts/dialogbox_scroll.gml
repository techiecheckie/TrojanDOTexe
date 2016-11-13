// TODO: limit this to just when the mouse is over the scrollbar!
var xx = argument0;
var yy = argument1;
var sx = argument2;
var swidth = argument3;
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, sx, yy+areaY, sx + swidth*2, yy + areaY + areaHeight)) {
        scrolling = true;
    }
    else {
        scrolling = false;
    }
}   
if (mouse_check_button(mb_left) && scrolling) {
    scrollPos = median(0, 1, (mouse_y - areaY) / areaHeight);
}
    
if (mouse_wheel_up()) {
    scrollPos -= 1/20;
    if (scrollPos < 0) {
        scrollPos = 0;
    }
}

if (mouse_wheel_down()) {
    scrollPos += 1/20;
    if (scrollPos > 1) {
        scrollPos = 1;
    }
}

