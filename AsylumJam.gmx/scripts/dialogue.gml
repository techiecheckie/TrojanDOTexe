///dialogue(scene);
/**
 * Dialogue
 *
 * Call this script whenever you would like a dialogue box to appear,
 * with the third argument being which scenerio to render.
 *
 *  scene (arg0) - type int - the scenerio to play, as per the switch statement cases
 */
var obj = instance_create(0, 0, oDialogue); // create the dialogue instance

switch (argument0) { // run through possible scenes
    case (0):
        obj.msg[0] = "I want to tell you something very important, Pinky..."; // message
        obj.xx[0] = oGreen.x; // dialogue position (middle of box/pointer) x
        obj.yy[0] = oGreen.y - 32; // dialogue position (bottom of pointer) y

        obj.msg[1] = "I... I think I'm in love with you!";
        obj.xx[1] = oGreen.x;
        obj.yy[1] = oGreen.y - 32;

        obj.msg[2] = "Naaaaaah.";
        obj.xx[2] = oPink.x;
        obj.yy[2] = oPink.y - 32;

        obj.msg[3] = "Oh, but I am! You see, I cannot stop thinking about you. You are the most beautiful creature I've seen recently!";
        obj.xx[3] = oGreen.x;
        obj.yy[3] = oGreen.y - 32;

        obj.msg[4] = "Oh hush, that's disgusting.";
        obj.xx[4] = oBlue.x;
        obj.yy[4] = oBlue.y - 32;

        obj.msg[5] = "No, it's actually kinda sweet.";
        obj.xx[5] = oPink.x;
        obj.yy[5] = oPink.y - 32;

        obj.msg[6] = "Really? Aww!";
        obj.xx[6] = oGreen.x;
        obj.yy[6] = oGreen.y - 32;

        obj.msg[7] = "I said kinda.";
        obj.xx[7] = oPink.x;
        obj.yy[7] = oPink.y - 32;

        obj.msg[8] = "Hahahahahahahaha";
        obj.xx[8] = oBlue.x;
        obj.yy[8] = oBlue.y - 32;
        break;
        // SCENE TEMPLATE
        /*case(numb): // ensure numb is not used in cases above
            obj.msg[0] = "abc"; // messages increase chronologically
            obj.xx[0] = 32;
            obj.yy[0] = 32;
            obj.msg[1] = "123";
            obj.xx[1] = 128;
            obj.yy[1] = 256;
            break;*/ // include break
        /* You can also add in other variables, like colors or pictures. Be sure to define them in oDiagloue, though*/
}
