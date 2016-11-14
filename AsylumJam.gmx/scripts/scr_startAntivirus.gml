/// scr_startAntivirus();

/* Works on its own time schedule, adding temp files to your RecycleBin. */
/* Should finish fully in 45 seconds from start. */
/* Once you run the antivirus, you can delete temp files from your recycle bin. */

instance_create(0, 0, antivirusHandlerObject);
