/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This script drops an object that has been picked up using "scr_dNd_*" scripts.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dNd_drop(objToDrop)
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



//reset the mouse cursor
cursor_sprite = hndl_dragNdrop_Mngr.obj_dragNdrop_Cursor[objToDrop.id_dragNdrop];

//reset the objToDrop.depth to its original depth
objToDrop.depth = hndl_dragNdrop_Mngr.obj_dragNdrop_Z[objToDrop.id_dragNdrop];

objToDrop.is_dragNdrop = 0;                 //reset objToMove's is_dragNdrop var

//check if the object should only be dropped once
if (objToDrop.isSingleDrop == 1)
{
    //lock the object so it can no longer be moved with the dragNdrop scripts
    objToDrop.isLocked = 1;
}

hndl_dragNdrop_Mngr.count_dragNdrop -= 1;   //decrement dragNdrop managers dragNdrop object count
