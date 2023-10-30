/// @desc idk lol
draw_sprite_ext(spr_title, 0, (room_width/2), (room_height/2)/2, 2, 2, 0, -1, 1);
draw_set_halign(fa_center);
draw_text_color((room_width/2), (room_height/2) + (10*8), "By Logan \"BB\" Smith", light, light, light, light, 1);
draw_text_transformed_color((room_width/2), (room_height/2) + (10*8)+12, "@_JustCallMeBB_", 0.5, 0.5, 0, light, light, light, light, 1);
draw_text_color((room_width/2), (room_height/2) + (10*11), "Created in 48 hours", base, base, base, base, 1);
draw_text_color((room_width/2), (room_height/2) + (10*12), "For the Ludun Dare 49 Game Jam", dark, dark, dark, dark, 1);
draw_text_color((room_width/2), (room_height/2) + (10*13), "(Theme: Unstable)", darkest, darkest, darkest, darkest, 1);

flashAlarm--;
if flashAlarm == -60 flashAlarm = 60

if flashAlarm > 0 textAlpha = 1 else textAlpha = 0;

draw_text_transformed_color((room_width/2), (room_height/2) + (10*4), "Press Any Key", 2, 2, 0, c_white, c_white, c_white, c_white, textAlpha);