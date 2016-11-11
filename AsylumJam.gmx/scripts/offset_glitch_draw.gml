///Draw surface
shader_set(shd_offset_glitch);

texture_set_stage(uni_iNoise, tex_iNoise);

shader_set_uniform_f(uni_iGlobalTime, var_iGlobalTime_var);
shader_set_uniform_f(uni_iResolution, var_iResolution_x, var_iResolution_y);//       Should be resolution of applied texture
draw_surface(application_surface,0,0)

shader_reset()

offset_glitch_timer ++;
if (offset_glitch_timer > offset_glitch_timer_max) {
    offset_glitch_update();
    offset_glitch_timer = 0;
}
