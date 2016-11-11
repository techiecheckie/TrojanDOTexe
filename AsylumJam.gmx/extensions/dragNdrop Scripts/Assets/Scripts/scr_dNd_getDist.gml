/*************************************************************************************************
*   Author: Johnny Ross
*
*   Description:
*       This is a simple script that finds and returns the absolute distance between
*       two numeric values. However, note that this script will turn a negative value
*       into a positive value (only positive vals returned).
*
*       This script should only be used on an object setup for using
*       the dragNdrop scripts.
*
*   Usage:
*       scr_dragNdrop(value_1, value_2)
*
*                 value_1 = a numeric value
*                 value_2 = a numeric value to be subtracted from value_1
*    
*
*   For simple and quick drag-and-drop functionality, see script "scr_dragNdrop" ..
*   Or, check out "scr_dragNdrop_ext" for more advanced drag-and-drop capabilities
*
*************************************************************************************************/



//primary vars for holding argument data.......................

var value_1;
value_1 = argument0;  //the object to drag/move

var value_2;
value_2 = argument1;  //depth to use while moving objToMove

//.............................................................



//get the distance between value_1 and value_2
var distance;
distance = value_1 - value_2;

//if the distance is negative, make it positive
if (distance < 0)
{
    distance *= -1;   
}

return distance;