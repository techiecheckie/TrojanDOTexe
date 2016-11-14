uni_to = shader_get_sampler_index(shd_glitch_combine, "to");
tex_to = sprite_get_texture(spr_glitch1, 0);

uni_iProgress = shader_get_uniform(shd_glitch_combine, "progress");
var_iProgress = 0;

// flags
state = -1;

transitionSpeed = 0.005;
glitchTimer = 90;
noiseTimer = 15;
crashTimer = 90;

glitchImg = spr_glitch1;
