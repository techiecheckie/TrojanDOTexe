/// draw_sprite_bar(sprite, x, y, width)


var xx = argument1;
var yy = argument2;
var w = argument3;

// TODO: add x buttons

// winddow bar is a sprite of 3 tiles. The middle tile is stretched across the whole width
var spr = argument0;
var tileWidth = floor(sprite_get_width(argument0)/3);
var tileHeight = sprite_get_height(argument0);

var stretchWidth = max(w - tileWidth*2, 0);

// draw left cap
draw_sprite_part(spr, 0, 0, 0, tileWidth, tileHeight, xx, yy);

// draw right cap

draw_sprite_part(spr, 0, tileWidth*2, 0, tileWidth, tileHeight, xx+w-tileWidth, yy);

// draw middle
if (stretchWidth > 0)
    draw_sprite_part_ext(spr, 0, tileWidth, 0, tileWidth, tileHeight, xx+tileWidth, yy, stretchWidth/tileWidth, 1, c_white, image_alpha);
