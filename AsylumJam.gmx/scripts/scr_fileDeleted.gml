/// File Deleted

/* You can delete a file after running the antivirus.
    To move on from here, you need to delete the cache on IE. */
/* Antivirus window pops up with all your files in it! Oh no! */

audio_play_sound(snd_note, 10, 0);
var dialogbox = instance_create(75, 0, obj_dialogbox);
with (dialogbox) {
    dialogbox_set_text("MALWARE FOUND!
    C:\Dekstop\YourFiles\CORRUPT1
    C:\Dekstop\YourFiles\CORRUPTASFUCK
    C:\Dekstop\YourFiles\GOT_THIS_ONE_TOO
    C:\Dekstop\YourFiles\ALREADY-TR0J4Ns
    C:\Dekstop\YourFiles\TOO-BAD-SOOOOO-SAD
    C:\Dekstop\YourFiles\LATEBIRD.LATEBIRD
    ");
    // add all the buttons
    dialogbox_add_button("OK", scr_closeAntivirus);

}
