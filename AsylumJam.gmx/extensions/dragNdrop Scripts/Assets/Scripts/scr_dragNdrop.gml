/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This is a simple script for adding drag-and-drop functionality to an object.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dragNdrop(objToMove, dragDepth)
*
*                 objToMove = the object to drag/drop
*                 dragDepth = depth to give to objToMove while it's being dragged
*                               -- (use the depth of the calling object to NOT change
*                                   depth of objToMove while being dragged)
*    
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop"
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

//.............................................................



//check if the mouse button was released
if (mouse_check_button_released(mb_left))
{
    //drop the object
    scr_dNd_drop(objToMove);
}
else
    {
        //else, drag the object
        scr_dNd_drag(objToMove, dragDepth, -1);
    }