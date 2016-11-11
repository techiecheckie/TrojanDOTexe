/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This script "drags" an object, that has been setup for dragNdrop
*       functionality, around the game window.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dNd_drag(objToDrag, dragDepth, mouseDragIcon)
*
*                 objToDrag = the object to drag/move
*                 dragDepth = depth to give to objToDrag while it's being dragged
*                               -- (use the depth of the calling object to NOT change
*                                   depth of objToDrag while being dragged)
*             mouseDragIcon = mouse icon to use while dragging objToDrag
*                               -- set to -1 to keep the default mouse cursor
*    
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop" ..
*   Or, check out "scr_dragNdrop_ext" for more advanced drag-and-drop capabilities
*
*************************************************************************************************/



//primary vars for holding argument data.......................

var objToDrag;
objToDrag = argument0;  //the object to drag/move

var dragDepth;
dragDepth = argument1;  //depth to use while moving objToDrag

var mouseDragIcon;
mouseDragIcon = argument2;  //mouse icon to use (if any)

//.............................................................




//get a handle to the drag-and-drop manager object
var hndl_dragNdrop_Mngr;
hndl_dragNdrop_Mngr = scr_dNd_getManager();



//only set the next vars if objToDrag has just been selected
if (objToDrag.is_dragNdrop = 0)
{
    //position vars for when objToDrag is first picked
    var orig_X, orig_Y, orig_Z;
    orig_X = objToDrag.x;
    orig_Y = objToDrag.y;
    orig_Z = objToDrag.depth;
    
    //only need to set an objects id_dragNdrop var once
    if (objToDrag.id_dragNdrop = -1)
    {
        //set the drag-and-drop id for objToDrag
        objToDrag.id_dragNdrop = hndl_dragNdrop_Mngr.id_Next_dragNdrop;
        hndl_dragNdrop_Mngr.id_Next_dragNdrop += 1;
    }
    
    //update the obj_dragNdrop position arrays
    hndl_dragNdrop_Mngr.obj_dragNdrop_X[objToDrag.id_dragNdrop] = orig_X;
    hndl_dragNdrop_Mngr.obj_dragNdrop_Y[objToDrag.id_dragNdrop] = orig_Y;
    hndl_dragNdrop_Mngr.obj_dragNdrop_Z[objToDrag.id_dragNdrop] = orig_Z;
    
    //set the mouse icon
    if (mouseDragIcon = -1)
    {
        mouseDragIcon = cursor_sprite;
    }
    hndl_dragNdrop_Mngr.obj_dragNdrop_Cursor[objToDrag.id_dragNdrop] = cursor_sprite; //set the manager's obj_dragNdrop_Cursor[] var
    cursor_sprite = mouseDragIcon;
    
    //increment the manager object's total_dNd_count var
    hndl_dragNdrop_Mngr.count_dragNdrop += 1;
    
    //set objToDrag.is_dragNdrop to 1 (true)
    objToDrag.is_dragNdrop = 1;
}



//width and height vars used for finding the center of objToDrag
var obj_width, obj_height;
obj_width = objToDrag.sprite_width;
obj_height = objToDrag.sprite_height;

//get the center x/y coords (origin) of objToDrag
var obj_Center_X, obj_Center_Y;
obj_Center_X = sprite_get_xoffset(objToDrag.sprite_index);
obj_Center_Y = sprite_get_yoffset(objToDrag.sprite_index);



//position vars for moving objToDrag
var pos_x, pos_y, pos_z;

pos_z = dragDepth;  //set pos_z (Z index) to the provided dragDepth var

//then set the position of objToDrag based on its origin coords
if (obj_Center_X > 5 && obj_Center_Y > 5)
{
    //this places the mouse at objToDrag's origin
    pos_x = mouse_x;
    pos_y = mouse_y;
}
else
    {
        //this places the mouse at the center of the object
        pos_x = (mouse_x - (obj_width / 2));
        pos_y = (mouse_y - (obj_height / 2));
    }



//move objToDrag to the new position
objToDrag.x = pos_x;
objToDrag.y = pos_y;
objToDrag.depth = pos_z;