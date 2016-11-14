/// draw_text_ext_on_scrollpane(u, v, string, w)
surface_set_target(surf);
draw_text_ext(argument0, -scrollPos * scrollScale + argument1, argument2, -1, argument3);
surface_reset_target();
