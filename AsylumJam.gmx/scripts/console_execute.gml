///console_execute(input)

    /* maximum number of arguments parsed by this script will be command + 8 */
    /* go to "switch" statement part, to edit commands */

    var input = string(argument0);
    var command = '';
    var args, i;
    for(i=0; i<9; i++) {
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
        if (i < 9 and c == ' ') {
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

    // Set up the last command.
    var lastCommand = command;
    lastCommand = 'C:\' + filepath + '> ' + args[0] + " " + args[1];
    console_log(lastCommand, c_white);
    
    // execute provided command
    
    switch(command) {
        case 'help':
            console_log('yoU aRe beYonD hOpe', c_purple);
            console_log('BUt maYbe iF U had a coMMaND liKE...', c_purple);
            console_log('cmdlist...', c_aqua);
        break;
        
        case 'cmdlist':
            console_log('cd [filepath]: change directory', c_white);
            console_log('clear: clear console', c_white);
            console_log('dir: list items in current directory', c_white);
            console_log("rm: remove files in directory.", c_white);
            console_log("run [exe file]: run an exe file", c_white);
            console_log('find .-type f -name ".[FILE EXTENSION]" -print:', c_white);
            console_log("   Prints all files with a given FILE EXTENSION.", c_white);
            break;
        break;
        
        case 'clear':
            for(var i = 0; i <= __cnol; i++) {
                __cl[i] = '';
            }
        break;
        
        case 'ls':
            console_log('thIs Is WinD0ws.', c_purple);
            console_log('bEtcHA thoUgHT yOU wErE clEVer ThO', c_purple);
        break;
        
        case 'dir':
            if (filepath == "Dekstop") {
                if args[1] == '' {
                    console_log("cmd.exe   internetexplorer.exe   ", c_white);
                    console_log("TrojanDOTexe.exe", c_red);
                    console_log("RecycleBin\    YourFiles\   ", c_blue);
                } else {
                    console_log("dir command cannot take args: " + args[1], c_red);
                    console_log("niCe tRY tHo", c_purple);
                }
            }
            else if (filepath == "Dekstop\RecycleBin") {
                if (args[1] == '') {
                    var st = ".   ..   ";
                    for (var i = 0; i < global.recycleBinSize; i++) {
                        if ((i > 0) && (i % 2) && !(i ==  global.recycleBinSize-1) && !(global.recycleBin[i] == "")) {
                            st += global.recycleBin[i] + "#";
                            console_log(st, c_white);
                            st = "";
                        }
                        else if !(global.recycleBin[i] == ""){
                            st += global.recycleBin[i] + "     ";
                        }
                    }
                    console_log(st, c_white);
                } else {
                    console_log("dir command cannot take args: " + args[1], c_red);
                    console_log("deFIancE isnOt cuTE huMAN", c_purple);
                }
            }
            
            else if (filepath == "Dekstop\YourFiles") {
                if args[1] == '' {
                    var str = "";
                    for (var i = 0; i < global.yourFilesSize;i++) {
                        if (i == 0) {
                            str += ".   ..   ";
                        }
                        str += global.yourFiles[i] + "   ";
                        if (i % 2 != 0 && i != 0) {
                            console_log(str, c_white);
                            str = "";
                        }
                    }
                    if (global.yourFilesSize % 2 != 0) {
                        console_log(str, c_white);
                    }
                    // console_log(".   ..   CORRUPT1   CORRUPTASFUCK   ", c_white);
                    // console_log("GOT_THIS_ONE_TOO   ALREADY-TR0J4Ns", c_white);
                    // console_log("TOO-BAD-SOOOOO-SAD   LATEBIRD.LATEBIRD  ", c_white);
                } else {
                    console_log("dir command cannot take args: " + args[1], c_red);
                    console_log("noT AMUSED", c_purple);
                }
            }
        break;
        

        case 'cd':
            if args[1] == '' {
                console_log("cd command requires arguments", c_red);
                console_log("yOU hAve NO idEA whAT YoU ARedOIng, dO YoU?", c_purple);
            } else if (args[1] == "."){
                break;
            }
            else if (filepath == "Dekstop" && args[1] == "..") {
                console_log("cOORUUPTED*&)@Q(465", c_red);
                console_log("nOwhEre 2 gO", c_purple);
            }
            else if (filepath != "Dekstop" && args[1] == "..") {
                filepath = "Dekstop";
            }
            else if (args[1] == "RecycleBin") {
                filepath = "Dekstop\RecycleBin";
            }
            else if (args[1] == "YourFiles") {
                filepath = "Dekstop\YourFiles";
            }
            else {
                console_log(args[1] + " is not a directory.", c_red);
            }
            break;
        
        case 'rm':
            if (args[1] == '') {
                console_log("rm command requires arguments", c_red);
                console_log("cLUuUuUuUUUUUULeSS", c_purple);
            } else if (global.flag[FLAGS.RESTORE_FILES] && filepath == "Dekstop"
                && args[1] == "TrojanDOTexe.exe") {
                global.flag[FLAGS.DELETE_VIRUS_MAIN_BODY] = 1;
                /* The sprite for the Trojan icon later to enter should warp here. */
            }
            else if (filepath == "Dekstop" && args[1] != "TrojanDOTexe.exe"){
                console_log("sRy reMoVED thAT fuNCtion in THis FoLDer", c_purple);
            } else if (filepath == "Dekstop" && args[1] == "TrojanDOTexe.exe") {
                console_log("yoU'Ll neVer gET RId oF mE!1", c_purple);
            } else if (filepath == "Dekstop\RecycleBin" && string_pos(".bin", args[1])){
                console_log("nOPe, i NeED tHOse to DestROy YoU", c_purple);
            } else if (filepath == "Dekstop\RecycleBin" && string_pos(".temp", args[1])) {
                for (var i = 0; i < global.recycleBinSize; i++) {
                    if (global.recycleBin[i] == args[1]) {
                        for (var j = i; j <= global.recycleBinSize-1; j++) {
                            if (j == global.recycleBinSize-1) {
                               
                                global.recycleBinSize--;
                                recycleBin[j] = "";
                                //exit;
                            }
                            else {
                               
                                global.recycleBin[j] = global.recycleBin[j+1];
                            }
                        }
                        global.tempFilesDeleted++;
                        if (global.tempFilesDeleted >= 1) {
                            global.flag[FLAGS.DELETE_1_FILE] = 1;
                            console_log("Deleted one temp file.", c_green);
                            console_log("heYA sshoLe doNt do THat", c_purple);
                        }
                        if (global.tempFilesDeleted >= 7) {
                            global.flag[FLAGS.DELETED_ALL_FILES] = 1;
                            console_log("Deleted ALL temp files.", c_green);
                            console_log("i'LL geT u 4 THis", c_purple);
                        }
                        exit;
                    }
                }
                console_log("File does not exist.", c_red);
            }
            else {
                console_log("File cannot be found in " + filepath + ".", c_red);
            }
            
            break;
        case 'find':
            if(global.flag[FLAGS.DELETE_VIRUS_MAIN_BODY]) {
                if args[1] == '' {
                    console_log("fuKkkENNNNFLsdkj HUUUkmAMNNNnn", c_purple);
                } else if (args[1] == '.' && args[2] == '-type' && args[3] == 'f' &&
                        args[4] == '-name' && args[5] == '".XOR"' && args[6] == '-print'){
                    global.flag[FLAGS.DELETE_VIRUS_HIDDEN_FILE] = 1;
                    console_log("HIDDEN. FILE. TR0J4N.DAT. DELETED.", c_green);
                    global.flag[FLAGS.GAMEWON] = 1;
                }
            }
            else {
                console_log(command + ': command not recognized on this machine.', c_red);
                console_log("lol, i DiSabLEd moST oF th0SE", c_purple);
            }
            break;
        case 'run':
            if (global.flag[FLAGS.RESTORE_FILES]) {
                if args[1] == '' {
                    console_log("sTISOIOpoOOPP POIITITTTT", c_purple);
                } else if (args[1] == "RUNME.exe"){
                    console_log("The EXT you seek...", c_green);
                    console_log("...is quite unique...", c_green);
                    console_log("Put the right logical op...", c_green);
                    console_log("...in the right seat.", c_green);
                    console_log(" 1 ___ 1 = 0 ", c_green);
                    console_log("There be 2 possible answers in your hand...", c_green);
                    console_log("Take the one without the &.", c_green);
                }
            }
            break;
        case 'argtest':
            var i, total, str;
            total = 0;
            str = '';
            for(i = 1; i<9; i++) {
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
                console_log(command + ': command not recognized on this machine.', c_red);
                console_log("lol, i DiSabLEd moST oF th0SE", c_purple);
            }
        break;
    }
    
    
