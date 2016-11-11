/// window_init([width])

windowWidth = 640;

if (argument_count > 0) {
    windowWidth = argument[0];
}
windowHeight = sprite_get_height(spr_window_bar);

image_speed =0;
image_index = 0;

xButton_x = windowWidth - 12;
xButton_y = windowHeight/2;

scr_dragNdrop_init();

is_dragNdrop = 0;
id_dragNdrop = -1;

isSingleDrop = 0;
isLocked = 0;

