/// draw_sprite_on_scrollpane(sprite, subimage, u, v)
surface_set_target(surf);
draw_sprite(argument0, argument1, argument2, -scrollPos * scrollScale + argument3);
surface_reset_target();
