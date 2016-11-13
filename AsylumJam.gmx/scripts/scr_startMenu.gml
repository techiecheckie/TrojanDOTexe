// Control the start menu items

//What happens when you click the menu
switch (mpos)
{
    case 0:
    {
        room_goto_next();
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


