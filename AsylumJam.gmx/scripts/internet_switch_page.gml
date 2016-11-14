/// internet_switch_page(page)

switch(argument0) {
    case 0:
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 652);
        url = "http://faboo.com";
        back = -1;
    break;
    
    case 1:
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 
        256+string_height_ext(mainArticleCopy,-1,scrollpaneWidth - 32));
        url = "http://faboo.com";
        back = 0;
    break;
}

state = argument0;
