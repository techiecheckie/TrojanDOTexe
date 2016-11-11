/// src_dragNdrop_start(obj, depth);
// called when you 'start' a drag, like when the mouse button is clicked.
// this just sets the offset so you don't start dragging from top left every time.

dragOffsetX = mouse_x - x;
dragOffsetY = mouse_y - y;

scr_dragNdrop(argument0, argument1);
