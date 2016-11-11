///string_to_real(str)

    var str = argument0;
    if (is_real(str)) return str;
    var out = "";
    var char, code;
    
    for(i = 1; i <= string_length(str); i++) {
        char = string_char_at(str, i);
        code = ord(char);    
        if ((code >= $30 and code <= $39)) {
            out += char;
        } else if (char == "." or char == ",") { //some countries uses , instead of . as separator
            out += char;
        }
    }
    
    if string_length(out) == 0 return 0 else return real(out);
