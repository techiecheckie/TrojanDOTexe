/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This script determines whether or not an object is within range to snap to a
*       specified object.
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dNd_snap(objToMove, snap_obj, snap_x, snap_y, maxDistX, maxDistY)
*       
*               objToMove = the object to drag/drop
*                snap_obj = an instance or an object_index(type) to snap to on drop
*                  snap_x = x-offset to snap to
*                  snap_y = y-offset to snap to
*                maxDistX = max x-axis distance allowed from snap_obj for snapping
*                maxDistY = max y-axis distance allowed from snap_obj for snapping
*
*       ** Below are "arg = val" pairs that cause an argument to be "ignored" when the script is called:
*                snap_obj = -1;
*                  snap_x = 0;
*                  snap_y = 0;
*                maxDistX = -1;
*                maxDistY = -1;
*
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop" ..
*   Or, check out "scr_dragNdrop_ext" for more advanced drag-and-drop capabilities
*
*************************************************************************************************/



//primary vars for holding argument data.......................

var objToMove;
objToMove = argument0;  //the object to drag/move

//vars for holding snapping info
var snap_obj, snap_x, snap_y, maxDistX, maxDistY;
snap_obj = argument1;       //obect type to snap to
snap_x = argument2;         //x-offset to snap to when obToMove is dropped
snap_y = argument3;         //y-offset to snap to
maxDistX = argument4;       //distance allowed on the x-axis for snapping to snap_obj
maxDistY = argument5;       //distance allowed on the y-axis for snapping to snap_obj

//.............................................................



//get a handle to the drag-and-drop manager object
var hndl_dragNdrop_Mngr;
hndl_dragNdrop_Mngr = scr_dNd_getManager();



var nearest_snap_obj;   //stores the nearest instance of snap_obj

//width and height vars used for finding the center of objToMove
var obj_width, obj_height;  
obj_width = objToMove.sprite_width;
obj_height = objToMove.sprite_height;

//position vars for moving the object
var pos_x, pos_y, pos_z;   //vars to move objToMove to (pos_x, pos_y)

//get the center x/y coords of the obj
obj_Center_X = sprite_get_xoffset(objToMove.sprite_index);
obj_Center_Y = sprite_get_yoffset(objToMove.sprite_index);



//find out if a snap object is being used
if (snap_obj != -1)
{
    //check if a snap object exists
    if (instance_exists(snap_obj))
    {
        //find the snap_object nearest the mouse
        nearest_snap_obj = instance_nearest(mouse_x, mouse_y, snap_obj);
    }
}



//now find the x/y coords to move to

//GET X-COORD ... check if maxDistX was set and if a snap_obj exists
if (maxDistX >= 0 && (snap_obj != -1 && instance_exists(snap_obj)))
{
    //if so, update the pos_x vars using the nearest_snap_obj coords
    
    //get the distance between mouse_x coord and nearest_snap_obj.x
    var x_dist;
    x_dist = scr_dNd_getDist(mouse_x, nearest_snap_obj.x);
    
    
    //now find out if the distance is in range
    if (x_dist <= maxDistX)
    {
        //if it is in range, set pos_x to the snap location
        pos_x = nearest_snap_obj.x + snap_x;
    }
    else
        {
            //else, send the object back to its original coordinates
            scr_dNd_snapBack(objToMove);
            
            return 0;   //do not continue script
        }
}
else
    {
        //if a range was set OR a snap_obj was not found (previous check)
        if (maxDistX >= 0 || snap_obj != -1)
        {
            //send the object back to its original coordinates
            scr_dNd_snapBack(objToMove);
            
            return 0;   //do not continue script
        }
        else
            {
                //set the x-coord to move to
                if (obj_Center_X > 5 && obj_Center_Y > 5)
                {
                    pos_x = mouse_x;
                }
                else
                    {
                        pos_x = (mouse_x - (obj_width / 2));
                    }
            }
    }



//GET Y-COORD ... check if maxDistY was set and if a snap_obj exists
if (maxDistY >= 0 && (snap_obj != -1 && instance_exists(snap_obj)))
{
    //if so, update the snap_yoffset and pos_y vars using the nearest_snap_obj coords
    
    //get the distance between mouse_y coord and nearest_snap_obj.y
    var y_dist;
    y_dist = scr_dNd_getDist(mouse_y, nearest_snap_obj.y);
    
    
    //now find out if the distance is in range
    if (y_dist <= maxDistY)
    {
        //if it is in range, set pos_y to the snap location
        pos_y = nearest_snap_obj.y + snap_y;
    }
    else
        {
            //else, send the object back to its original coordinates
            scr_dNd_snapBack(objToMove);
            
            return 0;   //do not continue script
        }
}
else
    {
        //if a range was set OR a snap_obj was not found (previous check)
        if (maxDistY >= 0 || snap_obj != -1)
        {
            //send the object back to its original coordinates
            scr_dNd_snapBack(objToMove);
            
            return 0;   //do not continue script
        }
        else
            {
                //set the y-coord to move to
                if (obj_Center_X > 5 && obj_Center_Y > 5)
                {
                    pos_y = mouse_y;
                }
                else
                    {
                        pos_y = (mouse_y - (obj_height / 2));
                    }
            }
    }



//place objToMove at the snap location
scr_dNd_snapTo(objToMove, pos_x, pos_y);
