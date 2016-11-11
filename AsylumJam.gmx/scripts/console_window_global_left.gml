if (!mouse_check_button_pressed(mb_left)) {
    exit;
}

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + windowWidth, y + windowHeight)) {
    // we're dragging!
    //check if the object has been locked or not
    if(self.isLocked = 0)
    {
        //check if the dragNdrop script is already running
        if (self.is_dragNdrop = 0)
        {
            scr_dragNdrop_start(self, -10000);     //run the dragNdrop script
                                            //  -- scr_dragNdrop(objToMove, dragDepth)
        }
    }
}
