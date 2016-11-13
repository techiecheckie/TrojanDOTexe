// Control the start menu items

//What happens when you click the menu
switch (mpos)
{
    case 0:
    {
        with(obj_startMenu) {
            instance_destroy();
        }
        var dialogbox = instance_create(100, 350, obj_dialogbox);
        with (dialogbox) {
            dialogbox_set_text("It seems you need to update ActiveX to play this game. Update?");
            
            // add all the buttons
            dialogbox_add_button("Yes", scr_downloadActiveX);
            dialogbox_add_button("No", scr_noDownloadAX);

        }
        break;
    }
    case 1:
    {
        room_goto(rm_credits);
        break;
    }
    case 2: game_end(); break; 
    default: break;
}


