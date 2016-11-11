/// draw_window_bar(xLeft, y, width)

var xx = argument0;
var yy = argument1;
var w = argument2;

// TODO: add x buttons

// winddow bar is a sprite of 3 tiles. The middle tile is stretched across the whole width
var spr = spr_window_bar;
var tileWidth = floor(sprite_get_width(spr_window_bar)/3);
var tileHeight = sprite_get_height(spr_window_bar);

var stretchWidth = max(w - tileWidth*2, 0);

// draw left cap
draw_sprite_part(spr, 0, 0, 0, tileWidth, tileHeight, xx, yy-tileHeight);

// draw right cap

draw_sprite_part(spr, 0, tileWidth*2, 0, tileWidth, tileHeight, xx+w-tileWidth, yy-tileHeight);

// draw middle
if (stretchWidth > 0)
    draw_sprite_part_ext(spr, 0, tileWidth, 0, tileWidth, tileHeight, xx+tileWidth, yy- tileHeight, stretchWidth/tileWidth, 1, c_white, image_alpha);
