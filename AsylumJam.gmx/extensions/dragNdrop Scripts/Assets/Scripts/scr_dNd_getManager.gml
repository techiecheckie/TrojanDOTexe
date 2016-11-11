/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This script finds and returns the dragNdrop manager object in a room.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dragNdrop_getManager()
*
*                 this function does not take any arguments
*    
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop" ..
*   Or, check out "scr_dragNdrop_ext" for more advanced drag-and-drop capabilities
*
*************************************************************************************************/



//get a handle to the drag-and-drop manager object
var hndl_dragNdrop_Mngr;

//if a dragNdrop_Mngr object does not exist, create 1
if (!instance_exists(obj_dragNdrop_Mngr))
{
    hndl_dragNdrop_Mngr = instance_create(0, 0, obj_dragNdrop_Mngr);
}
else
    {
        //else, find the manager (there should only be ONE obj_dragNdrop_Mngr per room)
        hndl_dragNdrop_Mngr = instance_nearest(0,0, obj_dragNdrop_Mngr);
    }

return hndl_dragNdrop_Mngr;