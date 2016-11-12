shader_set(shd_glitch_combine);
    
texture_set_stage(uni_to, tex_to);

shader_set_uniform_f(uni_iProgress, 0.2);
draw_surface(application_surface,0,0)

shader_reset()
