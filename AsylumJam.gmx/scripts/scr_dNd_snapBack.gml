/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This script moves an object back to original location.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dNd_snapBack(objToDrop)
*
*                 objToDrop = the object to drop
*    
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop" ..
*   Or, check out "scr_dragNdrop_ext" for more advanced drag-and-drop capabilities
*
*************************************************************************************************/



//primary vars for holding argument data.......................

var objToDrop;
objToDrop = argument0;  //the object to drop

//.............................................................



//get a handle to the drag-and-drop manager object
var hndl_dragNdrop_Mngr;
hndl_dragNdrop_Mngr = scr_dNd_getManager();



//send the object back to its original coordinates
objToDrop.x = hndl_dragNdrop_Mngr.obj_dragNdrop_X[objToDrop.id_dragNdrop];
objToDrop.y = hndl_dragNdrop_Mngr.obj_dragNdrop_Y[objToDrop.id_dragNdrop];

//reset the depth of objToDrop
objToDrop.depth = hndl_dragNdrop_Mngr.obj_dragNdrop_Z[objToDrop.id_dragNdrop];

//reset the mouse cursor
cursor_sprite = hndl_dragNdrop_Mngr.obj_dragNdrop_Cursor[objToDrop.id_dragNdrop];

//stop the dragNdrop scripts
objToDrop.is_dragNdrop = 0; //reset objToMove's is_dragNdrop var to 0 (false)
hndl_dragNdrop_Mngr.count_dragNdrop -= 1;   //decrement the total_dNd_count var of the manager object
