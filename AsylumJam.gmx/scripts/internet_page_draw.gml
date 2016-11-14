/// internet_page_draw(x, y);

var actualX = argument0;
var actualY = argument1;

surface_set_target(surf);
draw_clear_alpha(c_white,1);

var scrollY = -scrollPos * scrollScale;

switch (state) {
    case 0: // home page
    
        draw_sprite_on_scrollpane(spr_faboo, 0, scrollpaneWidth/2, 96);
        draw_sprite_on_scrollpane(spr_internet_large_image,0,scrollpaneWidth/2, 160);
        
        draw_sprite_on_scrollpane(spr_weather_icon,0,scrollpaneWidth - 48, 32);
    
        if (hasChangedAds) {
            draw_sprite_on_scrollpane(spr_ad_cloud,0,scrollpaneWidth/2-250, 160);
            draw_sprite_on_scrollpane(spr_ad_cache,0,scrollpaneWidth/2+250, 160);
        }
        else {
        draw_sprite_on_scrollpane(spr_ad_pony,0,scrollpaneWidth/2-250, 160);
        draw_sprite_on_scrollpane(spr_ad_trojan,0,scrollpaneWidth/2+250, 160);
        }
        
        if (point_in_rectangle(mouse_x, mouse_y, actualX, actualY, actualX+scrollpaneWidth, actualY+displayHeight) &&
        isInteractable) {
            // check if clicked
            
            var largeW = sprite_get_width(spr_internet_large_image);
            var largeH = sprite_get_height(spr_internet_large_image);
            
            // main headline
            if (point_in_rectangle(mouse_x, mouse_y, actualX+scrollpaneWidth/2-largeW/2, actualY+scrollY+160, 
                actualX+scrollpaneWidth/2+largeW/2, actualY+scrollY+160+largeH)) {
                
                if (mouse_check_button_pressed(mb_left)) {
                    internet_switch_page(1);
                }
            }
            
            var adW = sprite_get_width(spr_ad_pony);
            var adH = sprite_get_height(spr_ad_pony);
            
            // left ad
            if (point_in_rectangle(mouse_x, mouse_y, actualX+scrollpaneWidth/2-250-adW/2, actualY+scrollY+160, 
                actualX+scrollpaneWidth/2-250+adW/2, actualY+scrollY+160+adH)) {
                
                if (mouse_check_button_pressed(mb_left)) {
                    // TODO: incorporate the flags
                    if (hasChangedAds) {
                        internet_switch_page(4);
                    }
                    else {
                        internet_switch_page(2);
                    }
                }
            }
            
            // weather
            if (point_in_rectangle(mouse_x, mouse_y, actualX+scrollpaneWidth - 48-36, actualY+scrollY+12, 
                actualX+scrollpaneWidth - 48+36, actualY+scrollY+64)) {
                
                if (mouse_check_button_pressed(mb_left)) {
                    // TODO: incorporate the flags
                    internet_switch_page(5);
                    
                }
            }
            
            // right ad
            if (point_in_rectangle(mouse_x, mouse_y, actualX+scrollpaneWidth/2+250-adW/2, actualY+scrollY+160, 
                actualX+scrollpaneWidth/2+250+adW/2, actualY+scrollY+160+adH)) {
                
                if (mouse_check_button_pressed(mb_left)) {
                    // TODO: incorporate the flags
                    if (hasChangedAds){
                        var d = instance_create(room_width/2 - 320, room_height/2 - 240, obj_dialogbox);
                        d.depth = -1;
                        with (d) {
                            dialogbox_set_text("Clear your internet cache?");
                            dialogbox_add_button("Yes", -1);
                            dialogbox_add_button("No", cancel_internet_dialog);
                        }
                    }else{
                        internet_switch_page(3);
                    }
                    
                }
            }
        }
    break;
    
    case 1: // main headline article
    
        draw_sprite_on_scrollpane(spr_faboo, 0, scrollpaneWidth/2, 72);
    
        draw_set_color(c_black);
        draw_set_font(fnt_headline);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text_ext_on_scrollpane(16, 128, mainArticleHeadline, scrollpaneWidth - 32);
        
        draw_set_font(fnt_article);
        draw_text_ext_on_scrollpane(16, 180, mainArticleCopy, scrollpaneWidth - 32);
        
        var h = string_height_ext(mainArticleCopy, -1, scrollpaneWidth - 32);
        draw_sprite_on_scrollpane(spr_download_antivirus, 0, scrollpaneWidth/2, h + 180 + 36);
        
        if (point_in_rectangle(mouse_x, mouse_y, actualX, actualY, actualX+scrollpaneWidth, actualY+displayHeight) &&
        isInteractable) {
            // check if clicked
            
            var largeW = sprite_get_width(spr_download_antivirus);
            var largeH = sprite_get_height(spr_download_antivirus);
            
            // main headline
            if (point_in_rectangle(mouse_x, mouse_y, actualX+scrollpaneWidth/2-largeW/2, actualY+scrollY+h + 180 + 36-largeH/2, 
                actualX+scrollpaneWidth/2+largeW/2, actualY+scrollY+h + 180 + 36+largeH/2)) {
                
                if (mouse_check_button_pressed(mb_left)) {
                    isInteractable = false;
                    // open download interaction.
                    var d = instance_create(room_width/2 - 320, room_height/2 - 240, obj_dialogbox);
                    d.depth = -1;
                    with (d) {
                        dialogbox_set_text("Download antivirus?");
                        dialogbox_add_button("Yes", download_antivirus_button);
                        dialogbox_add_button("No", cancel_internet_dialog);
                    }
                    
                }
            }
        }
        
    break;
    
    case 2: // pony ad
        draw_sprite_on_scrollpane(spr_ad_pony_page, 0, 0, 0);
    break;
    
    case 3: // trojan ad
        draw_sprite_on_scrollpane(spr_ad_trojan_page, 0, 0, 0);
    break;
    
    case 4: // cloud ad
        draw_sprite_on_scrollpane(spr_ad_cloud_page, 0, 0, 0);
    break;
    
    case 5: // weather
        draw_sprite_on_scrollpane(spr_weather_page, 0, 0, 0);
    break;
}

surface_reset_target();
draw_surface(surf,actualX,actualY);


