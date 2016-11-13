/// draw_outlined_pane(x1, y1, x2, y2, fill, outline, width)

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var fill = argument4;
var outline = argument5;
var w = argument6;

draw_set_alpha(1);
draw_set_color(outline);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_color(fill);
draw_rectangle(x1+w, y1+w, x2-w,y2-w, false);

draw_set_color(c_white);
