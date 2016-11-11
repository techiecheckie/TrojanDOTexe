/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This script snaps an object to a specific location.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dNd_snapTo(objToDrop, pos_x, pos_y)
*
*                 objToDrop = the object to drop
*                     pos_x = x-coord to snap to
*                     pos_y = y-coord to snap to
*    
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop" ..
*   Or, check out "scr_dragNdrop_ext" for more advanced drag-and-drop capabilities
*
*************************************************************************************************/



//primary vars for holding argument data.......................

var objToDrop;
objToDrop = argument0;  //the object to drop

var pos_x;
pos_x = argument1;  //the object to drop

var pos_y;
pos_y = argument2;  //the object to drop

//.............................................................



//get a handle to the drag-and-drop manager object
var hndl_dragNdrop_Mngr;
hndl_dragNdrop_Mngr = scr_dNd_getManager();



//place objToDrop at the snap location
objToDrop.x = pos_x;
objToDrop.y = pos_y;

//reset the depth to objToDrop's original depth when it is released
objToDrop.depth = hndl_dragNdrop_Mngr.obj_dragNdrop_Z[objToDrop.id_dragNdrop];

//reset the mouse cursor
cursor_sprite = hndl_dragNdrop_Mngr.obj_dragNdrop_Cursor[objToDrop.id_dragNdrop];

//stop the dragNdrop scripts
objToDrop.is_dragNdrop = 0; //reset objToDrop's is_dragNdrop var to 0 (false)

//check if the object should only be dropped once
if (objToDrop.isSingleDrop = 1)
{
    //lock the object so it can no longer be moved with the dragNdrop scripts
    objToDrop.isLocked = 1;
}

hndl_dragNdrop_Mngr.count_dragNdrop -= 1;   //decrement the total_dNd_count var of the manager object