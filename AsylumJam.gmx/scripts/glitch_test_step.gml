// TODO: remove. just to demo!


if (keyboard_check(ord('S'))) {
    noise_active = true;
}
else {
    noise_active = false;
}

if (keyboard_check(ord('A'))) {
    offset_glitch_active = true;
}
else {
    offset_glitch_active = false;
}

if (keyboard_check(ord('D'))) {
    warp_active = true;
}
else {
    warp_active = false;
}

if (keyboard_check_pressed(vk_space)) {
    crash_glitch_start();
}
