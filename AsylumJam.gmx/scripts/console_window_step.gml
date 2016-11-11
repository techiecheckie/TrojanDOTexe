//check if the dragNdrop script is already running
if (self.is_dragNdrop = 1)
{
    scr_dragNdrop(self, -10000);     //run the dragNdrop script
                                    //  -- scr_dragNdrop(objToMove, dragDepth)
}

// THE ORDER IS IMPORTANT
// THE CONSOLE CLEARS MOUSE INPUT, so drag needs to happen before 
console_step();
