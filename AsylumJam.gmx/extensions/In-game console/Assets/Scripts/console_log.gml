///console_log(message,color)

    if (instance_exists(obj_console)) {
        with(obj_console) {
            for(var i = 0; i < __cnol; i++) {
                __cl[i] = __cl[i + 1];
                __cc[i] = __cc[i + 1];
            }
            __cl[__cnol] = string(argument0);
            __cc[__cnol] = argument1;
        }
    }  
