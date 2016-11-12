switch (state) {
    case 0:
    
    var_iProgress += transitionSpeed;
    shader_set(shd_glitch_combine);
    
    texture_set_stage(uni_to, tex_to);
    
    shader_set_uniform_f(uni_iProgress, var_iProgress);
    draw_surface(application_surface,0,0)
    
    shader_reset()
    
    if (var_iProgress >= 1) {
        state = 1;
    }
    break;
    
    case 1:
        // draw a random glitch image
        glitchTimer --;
        if (glitchTimer % 5 == 0) {
            glitchImg = choose(spr_glitch1, spr_glitch2, spr_glitch3, spr_glitch4);
        }
        draw_sprite(glitchImg, 0, 0, 0);
        if (glitchTimer <= 0) {
            state = 2;
        }
    break;
    
    case 2:
        // noise
        var_iGlobalTimeNoise_var += 1 / room_speed;
        
        shader_set(shd_noise);
        shader_set_uniform_f(uni_iGlobalTimeNoise, var_iGlobalTimeNoise_var);
        draw_set_alpha(1);
        draw_rectangle(0,0,view_wview[0], view_hview[0],0);
        draw_set_alpha(1);
        
        shader_reset();
        noiseTimer --;
        if (noiseTimer <= 0) {
            state = 3;
        }
    break;
    
    case 3:
        draw_set_alpha(1);
        draw_set_color(c_black);
        draw_rectangle(0,0,room_width, room_height,  0);
        crashTimer --;
        if (crashTimer <= 0) {
            state = 4;
            event_user(1); // what happens at the end of the crash?
        }
    break;
}
