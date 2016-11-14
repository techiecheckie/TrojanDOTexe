/// scrollpane_init(width, displayHeight, actualHeight);

scrolling = false;

scrollpaneWidth = argument0;
displayHeight = argument1;
actualHeight = argument2;

scrollbarWidth = 8
scrollbarHeight = (displayHeight / actualHeight)*displayHeight;

scrollPos = 0
scrollScale = max(0, actualHeight - displayHeight)

surf = surface_create(scrollpaneWidth, displayHeight);
