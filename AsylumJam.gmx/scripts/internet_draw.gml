window_draw();

var xx = x;
var yy = y + windowHeight; 

var backgroundColor = c_ltgray;
var textColor = c_black;
var outlineColor = c_black;

scrollpane_refresh();

// draw back pane

draw_outlined_pane(xx, yy, xx+windowWidth-1, yy+height, backgroundColor, outlineColor, 4);
draw_set_color(c_white);
draw_outlined_pane(xx+ urlbarPad, yy + urlbarPad, xx + windowWidth - 1 - urlbarPad, yy + urlbarPad + urlbarHeight, c_white, c_black, 1);

draw_set_valign(fa_middle);
draw_set_halign(fa_left);

draw_set_color(textColor);
draw_text(xx+urlbarPad*2, yy + urlbarPad + urlbarHeight/2, url);

var sub = 0;
if (back > -1) {
    sub = 1;
    
    if (point_in_rectangle(mouse_x, mouse_y, xx, yy+urlbarHeight+urlbarPad*2, xx + 48, yy+urlbarHeight+urlbarPad*2+backbuttonHeight)) {
        sub = 2;
        
        if (mouse_check_button_released(mb_left)) {
            internet_switch_page(back);
            
        }
    }
}
// draw back buttons
draw_sprite(spr_internet_buttons,sub,xx+12,yy+urlbarHeight+urlbarPad*2);


// draw the url

var iX = xx + windowWidth - 5 - scrollbarWidth;
var iY = yy+urlbarHeight+urlbarPad*2+backbuttonHeight;

internet_page_draw(xx+4, iY);

scrollbar_draw(iX, iY);
