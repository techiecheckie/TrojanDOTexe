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
    
        draw_sprite_on_scrollpane(spr_ad_pony,0,scrollpaneWidth/2-250, 160);
        draw_sprite_on_scrollpane(spr_ad_pony,0,scrollpaneWidth/2+250, 160);
        
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
                        dialogbox_add_button("Yes", -1);
                        dialogbox_add_button("No", cancel_internet_dialog);
                    }
                    
                }
            }
        }
        
    break;
}

surface_reset_target();
draw_surface(surf,actualX,actualY);


