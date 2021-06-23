image_xscale = width;
image_yscale = height;
draw_self();

draw_set_font(fPixeled);
draw_set_color(c_ltgrey);
// CODE FOR CENTERING NEEDS WORK
draw_text(x - (sprite_width / 3), y - (sprite_height / 4), text);
