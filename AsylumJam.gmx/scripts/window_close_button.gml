/// window_close_button()
// helper, handles the clicking on the close button for windows.
// actual action is ferried away to the event_user(0) event
var w = sprite_get_width(spr_window_x_button);
var h = sprite_get_height(spr_window_x_button);

if (!point_in_rectangle(mouse_x, mouse_y, x + xButton_x - w/2, y + xButton_y - h/2, x + xButton_x + w/2, y + xButton_y + h/2)) {
    image_index = 0;
    exit;
}

image_index = 1;
if (mouse_check_button(mb_left)) {
    image_index = 2;
}
if (mouse_check_button_released(mb_left)) {
    image_index = 2;
    event_user(0);
}
