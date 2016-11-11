uni_iNoise = shader_get_sampler_index(shd_offset_glitch, "iNoise");
tex_iNoise = sprite_get_texture(spr_noise, 0);

uni_iGlobalTime = shader_get_uniform(shd_offset_glitch, "iGlobalTime");
var_iGlobalTime_var = 0;

uni_iResolution = shader_get_uniform(shd_offset_glitch, "iResolution");
var_iResolution_x = view_wview[0];
var_iResolution_y = view_hview[0];

offset_glitch_timer = 0;
offset_glitch_timer_max = 5;
