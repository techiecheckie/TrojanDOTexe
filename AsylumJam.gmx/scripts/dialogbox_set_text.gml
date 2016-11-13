/// dialogbox_set_text(text)

text = argument0;

textFont = fnt_console; // TODO: change!
textWidth = areaWidth - padding *2;
// detect text height:
draw_set_font(textFont)
textHeight = string_height_ext(text, -1, textWidth) + padding*2
//
scrollPos = 0
scrollScale = max(0, textHeight - areaHeight)

if (areaHeight > textHeight) {
    areaHeight = textHeight;
}

surface_free(surf);
surf = surface_create(areaWidth, areaHeight);
