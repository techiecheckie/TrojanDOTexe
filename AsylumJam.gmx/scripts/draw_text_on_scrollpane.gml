/// draw_text_on_scrollpane(u, v, string)
surface_set_target(surf);
draw_text(argument0, -scrollPos * scrollScale + argument1, argument2);
surface_reset_target();
