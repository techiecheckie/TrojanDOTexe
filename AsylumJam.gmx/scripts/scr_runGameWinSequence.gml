/// Things that should happen when the player wins.

//Stop the timer!!!
with(obj_timer) {
    instance_destroy();
}

//Do some cool graphics stuff here
/* This is graphic, Diana, it's yours. */

/* Move to the winning room. */
room_goto(rm_gameWon);
