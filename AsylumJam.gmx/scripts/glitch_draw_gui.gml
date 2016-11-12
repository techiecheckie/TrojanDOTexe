if (noise_active) {
    noise_draw();
}
if (offset_glitch_active) {
    offset_glitch_draw();
}

if (warp_active) {
    crash_small_warp();
}
crash_glitch_draw();

