///console_step()

    // this script should be called in "begin step" event, to stop all kbd events

    if (!__c && keyboard_check_pressed(192)) or (__c and keyboard_check(vk_escape)) {
        keyboard_key_release(192);
        keyboard_string = '';
        __c = !__c;
    }
    
    if __c {
        //commands history
        if keyboard_check_pressed(vk_up) {
            if (__chisp < 9 and __chis[__chisp] != '') {
                keyboard_string = __chis[__chisp];
                __ctickerafter = '';
                __chisp++;
            }
        }
        
        if keyboard_check_pressed(vk_down) {
            if (__chisp > 1) {
                __chisp--;
                keyboard_string = __chis[__chisp-1];
                __ctickerafter = '';
            } else if (__chisp == 1) {
                __chisp = 0;
                keyboard_string = '';
                __ctickerafter = '';
            }
        }
        
        // moving caret left/right
        var input = keyboard_string;
        
        if keyboard_check_pressed(vk_left) {
            if (string_length(input) > 0) {
                __ctickerafter = string_char_at(input, string_length(input)) + __ctickerafter;
                input = string_delete(input, string_length(input), 1);
            }
        }
        
        if keyboard_check_pressed(vk_right) {
            if (string_length(__ctickerafter) > 0) {
                input = input + string_char_at(__ctickerafter, 1);
                __ctickerafter = string_delete(__ctickerafter, 1, 1);
            }
        }
        
        // home/end
        
        if keyboard_check_pressed(vk_home) {
            __ctickerafter = input + __ctickerafter;
            input = '';
        }
        if keyboard_check_pressed(vk_end) {
            input = input + __ctickerafter;
            __ctickerafter = '';
        }
        
        // parse command
    
        if keyboard_check_released(vk_enter) {
            console_execute(keyboard_string + __ctickerafter);
            keyboard_string = '';
            __ctickerafter = '';
        } else {
            // we have to put the global mouse event here so it doesn't get eaten by io_clear
            io_clear(); // prevents all other keyboard events in all other objects
            //(except keyboard_check_direct)
            keyboard_clear(keyboard_lastkey);
            keyboard_string = input;
        }
    }
    
    __cticker = (__cticker + 1) % room_speed;
