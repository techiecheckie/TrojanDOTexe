///console_execute(input)

    /* maximum number of arguments parsed by this script will be command + 4 */
    /* go to "switch" statement part, to edit commands */

    var input = string(argument0);
    var command = '';
    var args, i;
    for(i=0; i<5; i++) {
        args[i] = '';
    }
    
    // update command history
    
    for(i=9; i > 0; i--) {
        __chis[i] = __chis[i - 1];
    }
    __chis[0] = input;
    __chisp = 0; // reset command pointer
    
    // parse string
    
    var current = '';
    i = 0;
    for (var s = 1; s <= string_length(input); s++) {
        var c = string_char_at(input, s);
        if (i < 4 and c == ' ') {
            if (current != '') {
                args[i] = current;
                current = '';
                i++;
            }
        } else {
            current += c;
        }
    }
    
    args[i] = current;
    command = args[0];
    
    var _wrong = 'wrong number / no arguments provided!';
    
    // execute provided command
    
    switch(command) {
        case 'help':
            console_log('>> available commands <<', c_green);
            console_log(' exit // ends game', c_white);
            console_log(' clear // clears screen', c_white);
            console_log(' random a [b] // returns random integer number between 0 -a, or a and b if provided', c_white);
            console_log(' hello name // says hello to person with provided name', c_white);
            console_log(' argtest ... ... ... ... // says how many arguments you provided (4 max)', c_white);
        break;
        case 'exit':
            game_end();
        break;
        case 'clear':
            for(var i = 0; i <= __cnol; i++) {
                __cl[i] = '';
            }
        break;
        case 'random':
            if args[1] == '' {
                console_log(_wrong, c_red);
            } else {
                if args[2] != '' {
                    console_log(irandom_range(string_to_real(args[1]), string_to_real(args[2])), c_yellow);
                } else {
                    console_log(irandom(string_to_real(args[1])), c_yellow);
                }
            }
        break;
        case 'hello':
            if args[1] == '' {
                console_log(_wrong, c_red);
            } else {
                console_log(choose('Hi', 'Hello', 'Welcome', 'Good morning') + ' ' + args[1], c_purple);
            }
        break;
        case 'argtest':
            var i, total, str;
            total = 0;
            str = '';
            for(i = 1; i<5; i++) {
                if (args[i] != '') {
                    total++;
                    if (str != '') {
                        str += ', ';
                    } else {
                        str += ': ';
                    }
                    str += string(i) + ': ' + args[i];
                }
            }
            console_log('you entered ' + string(total) + ' arguments' + str, c_lime);
        break;
        default:
            if (command == '') {
                //console_log('', c_white); // if you want to have empty line on vk_enter, uncomment
            } else {
                console_log('command "' + command + '" unkown! enter "help" to see available options', c_red);
            }
        break;
    }
    
    
