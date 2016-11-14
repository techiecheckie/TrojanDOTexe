/// internet_switch_page(page)

switch(argument0) {
    case 0: // home page
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 652);
        url = "http://faboo.com";
        back = -1;
    break;
    
    case 1: // main article
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 
        256+string_height_ext(mainArticleCopy,-1,scrollpaneWidth - 32) + 72);
        url = "http://faboo.com/article";
        back = 0;
    break;
    
    case 2: // pony ad
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 
        sprite_get_height(spr_ad_pony_page));
        url = "http://faboo.com/pony";
        back = 0;
    break;
    
    case 3: // trojan ad
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 
        sprite_get_height(spr_ad_trojan_page));
        url = "http://faboo.com/trojan";
        back = 0;
    break;
    
    case 4: // cloud ad
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 
        sprite_get_height(spr_ad_cloud_page));
        url = "http://faboo.com/cloud";
        back = 0;
    break;
    
    case 5: // weather
        scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 
        sprite_get_height(spr_weather_page));
        url = "http://faboo.com/weather";
        back = 0;
    break;
}

state = argument0;
