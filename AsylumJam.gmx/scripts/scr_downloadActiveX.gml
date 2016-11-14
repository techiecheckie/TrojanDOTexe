/// scr_downloadActiveX


/* NEED GRAPHICS FOR THIS FOR THE ROOM TRANSITION, A CRASH! */
/* At this time, the game should crash and show a blue screen of death. 
Then, it will move to the desktop room. Change the dialogue text and install.*/
audio_play_sound(snd_clickY, 10, 0);
with (obj_glitch) {
    crash_script = goto_desktop;
    crash_glitch_start();
}
