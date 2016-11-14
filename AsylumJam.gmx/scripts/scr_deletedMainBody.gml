/// scr_deletedMainBody

/* DONE THROUGH CONSOLE -- LEAVE TO ME */
/* This is activated by using the console to delete the main body after hitting all flags */
/* The hidden body of the virus can now be grepped for. */

if (instance_exists(oDialogue)) {
    with(oDialogue) {
        instance_destroy();
    }
}
else {
    dialogue(SCENE.VIRUS_BODYDELETED, virus);
}
