/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This is the advanced script for adding drag-and-drop functionality to an object.
*       With this script, you can also add object snapping to "objToMove."
*
*   Usage:
*       scr_dragNdrop_ext(objToMove, dragDepth, mouseDragIcon, snap_obj, snap_x, snap_y, maxDistX, maxDistY)
*       
*               objToMove = the object to drag/drop
*               dragDepth = depth to give to objToMove while it's being dragged
*           mouseDragIcon = mouse icon to use while dragging objToMove
*                snap_obj = an instance or an object_index(type) to snap to on drop
*                  snap_x = x-offset to snap to
*                  snap_y = y-offset to snap to
*                maxDistX = max x-axis distance allowed from snap_obj for snapping
*                maxDistY = max y-axis distance allowed from snap_obj for snapping
*
*       ** Below are "arg = val" pairs that cause an argument to be "ignored" when the script is called:
*               dragDepth = objToMove.depth;    (use the depth of the calling object)
*           mouseDragIcon = -1;   (MUST be -1 for script to work properly if not using a new mouse icon)
*                snap_obj = -1;
*                  snap_x = 0;
*                  snap_y = 0;
*                maxDistX = -1;
*                maxDistY = -1;
*
*
*   For more advanced drag-and-drop functionality, see script "scr_dragNdrop_ext"
*
*   For more information on using dragNdrop scripts, read the following:
*           -   scr_dNd_drag            |      -   scr_dNd_snap
*           -   scr_dNd_drop            |      -   scr_dNd_snapBack
*           -   scr_dNd_getDist         |      -   scr_dNd_snapTo
*           -   scr_dNd_getManager      |
*
*************************************************************************************************/



//primary vars for holding argument data.......................

var objToMove;
objToMove = argument0;  //the object to drag/move

var dragDepth;
dragDepth = argument1;  //depth to use while moving objToMove

var mouseDragIcon;
mouseDragIcon = argument2;  //mouse icon to use (if any)

//vars for holding snapping info
var snap_obj, snap_x, snap_y, maxDistX, maxDistY;
snap_obj = argument3;       //obect type to snap to
snap_x = argument4;         //x-offset to snap to when obToMove is dropped
snap_y = argument5;         //y-offset to snap to
maxDistX = argument6;       //distance allowed on the x-axis for snapping to snap_obj
maxDistY = argument7;       //distance allowed on the y-axis for snapping to snap_obj

//.............................................................



//snap objToMove to nearest_snap_obj if the mouse button was released
if (mouse_check_button_released(mb_left))
{
    //use "scr_dNd_snap()" to drop an object directly onto another:
    //      --  scr_dNd_snap(objToMove, objToSnapTo, x-offset, y-offset, maxDistance-X, maxDistance-Y);
    scr_dNd_snap(objToMove, snap_obj, snap_x, snap_y, maxDistX, maxDistY);
}
else
    {
        //else, drag the object
        scr_dNd_drag(objToMove, dragDepth, mouseDragIcon);
    }