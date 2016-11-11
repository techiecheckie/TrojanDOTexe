///Draw surface
var_iGlobalTimeNoise_var += 1 / room_speed;

shader_set(shd_noise);
shader_set_uniform_f(uni_iGlobalTimeNoise, var_iGlobalTimeNoise_var);
draw_set_alpha(choose(0.5,0.6,0.7,0.8));
draw_rectangle(0,0,view_wview[0], view_hview[0],0);
draw_set_alpha(1);

shader_reset()
