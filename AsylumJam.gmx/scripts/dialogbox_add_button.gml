/// dialogbox_add_button(text, scriptToRun)
// TODO: write this!

var buttonFont = fnt_console; // TODO: replace!
var b = instance_create(0, 0, obj_dialogbutton);

b.text = argument0;
b.script = argument1;
b.parent = id;
b.pad = 12; // width padding

draw_set_font(buttonFont);
b.w = string_width(b.text);

ds_list_add(buttons, b);

var totalWidth = 0;    
for (var i = 0; i < ds_list_size(buttons); i++ ) {
    var b = ds_list_find_value(buttons, i);
    b.x = totalWidth;
    totalWidth += b.w + b.pad*2;
   
    
    if (i != ds_list_size(buttons)-1) {
        totalWidth += buttonPadding;
    }
}

buttonsWidth = totalWidth;

