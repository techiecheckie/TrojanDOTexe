// Flag enums

enum FLAGS {
    DOWNLOADED_ANTIVIRUS,
    RUN_ANTIVIRUS,
    DELETE_1_FILE,
    DELETE_CACHE,
    DELETED_FILE_AND_CACHE,
    REFORMAT_HARDDRIVE,
    DELETED_ALL_FILES,
    RESTORE_FILES,
    EXPOSE_VIRUS,
    DELETE_VIRUS_MAIN_BODY,
    DELETE_VIRUS_HIDDEN_FILE,
    GAMEWON,
    GAMEOVER,
    V_9MINS,
    V_8MINS,
    V_7MINS,
    V_6MINS,
    V_5MINS,
    V_4MINS,
    V_3MINS,
    V_2MINS,
    V_1MINS
}

// Flags to win.
for (var i = 0; i < 22; i++) {
    global.flag[i] = 0;
}


// Disable doubleclicking
global.dc_disabled = 1;

global.yourFiles[0] = 'CORRUPT1';
global.yourFiles[1] = 'CORRUPTASFUCK';
global.yourFiles[2] = 'GOT_THIS_ONE_TOO';
global.yourFiles[3] = 'ALREADY-TR0J4Ns';
global.yourFiles[4] = 'TOO-BAD-SOOOOO-SAD';
global.yourFiles[5] = 'LATEBIRD.LATEBIRD';

global.yourFilesSize = 6;

global.recycleBin[0] = "file001.bin"
global.recycleBin[1] = "file002.bin";
global.recycleBin[2] = "file003.bin";
global.recycleBin[3] = "file004.bin";
global.recycleBin[4] = "file005.bin";
global.recycleBin[5] = "file006.bin";


global.recycleBinSize = 6;
global.tempFilesDeleted = 0;
