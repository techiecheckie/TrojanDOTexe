/// scrollbar_draw(x, y);
var scrollbarColor = c_white;
var scrollbarBack = c_black;

var xx = argument0;
var yy = argument1;

if (scrollScale > 0) {

    scrollpane_scroll(xx, yy);
    
    // draw the scrollbar
    draw_set_color(scrollbarBack);
    draw_rectangle(xx, yy, xx+scrollbarWidth, yy+displayHeight,0);
    draw_set_color(scrollbarColor);
    draw_rectangle(xx, yy+scrollPos*(displayHeight-scrollbarHeight), xx+scrollbarWidth, yy+scrollPos*(displayHeight-scrollbarHeight)+scrollbarHeight, 0);
}
