/// scr_startAntivirus();

/* NEED INTERNET OBJECT FOR THIS TO WORK. */
/* This will run when the player double clicks it after downloading it from
    the internet to the desktop. */
/* Works on its own time schedule, adding temp files to your RecycleBin. */
/* Should finish fully in 45 seconds from start. */
/* Once you run the antivirus, you can delete temp files from your recycle bin. */

instance_create(0, 0, antivirusHandlerObject);
