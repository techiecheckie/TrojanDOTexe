///dialogue(scene, objTalking);
/**
 * Dialogue
 *
 * Call this script whenever you would like a dialogue box to appear.
 *      First arg is the scene. Check oDialogueInit for the proper enum to use.
 *      Second arg is the object that needs to talk.
 *
 */

// Create the dialogue instance, start up the key.
var obj = instance_create(0, 0, oDialogue);
objTalking = argument1;
key = object_get_name(objTalking) + string(argument0) + "_0"
var i = 0;

// Populate array with the appropriate text.
while (ds_map_exists(global.tooxt, key)) {
    key = object_get_name(objTalking) + string(argument0) + "_" + string(i);
    obj.msg[i] = ds_map_find_value(global.tooxt, key);
    obj.xx[i] = objTalking.x;
    obj.yy[i] = objTalking.y - 64;
    i++;
    if (!ds_map_exists(global.tooxt, object_get_name(objTalking) + string(argument0) + "_" + string(i))) {
        break;
    }
}
