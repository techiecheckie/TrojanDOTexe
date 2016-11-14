/// scr_restoreFiles

/* DONE IN CONSOLE, LEAVE TO ME. */
/* Mostly just makes it so that you are able to expose the virus, which happens
automatically. */
/* Antivirus finds virus files and now you can do a rm of the virus
    from the console. */
/* Puts an extra file in your console that reveals a hint if you do a "run" cmd. */

var dialogbox = instance_create(75, 0, obj_dialogbox);
with (dialogbox) {
    dialogbox_set_text("MALEVIRUS found VITAL PROBLEM.
    Exposing...TrojanDOTexe.exe.
    Please remove immediately.");
    
    // add all the buttons
    dialogbox_add_button("OK", scr_closeAntivirus);
}

// Added hidden file.
global.recycleBin[13] = "RUNME.exe";
