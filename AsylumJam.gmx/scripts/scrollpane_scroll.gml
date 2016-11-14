/// scrollpane_scroll(scrollbarx, scrollbary)
// TODO: limit this to just when the mouse is over the scrollbar!
var yy = argument1;
var sx = argument0;
var swidth = scrollbarWidth;
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, sx, yy, sx + swidth*2, yy + displayHeight)) {
        scrolling = true;
    }
    else {
        scrolling = false;
    }
}   
if (mouse_check_button(mb_left) && scrolling) {
    scrollPos = median(0, 1, (mouse_y - yy) / displayHeight);
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

