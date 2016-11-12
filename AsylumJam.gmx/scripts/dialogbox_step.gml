if mouse_check_button(mb_left) {
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
