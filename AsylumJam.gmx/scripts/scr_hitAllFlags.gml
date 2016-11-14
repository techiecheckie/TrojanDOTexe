/// Did we hit all the flags necessary to win?

for (var i = 0; i < 11; i++) {
    if (!global.flag[i]) {
        return false;
    }
}
return true;
