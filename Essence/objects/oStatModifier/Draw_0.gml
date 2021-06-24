x = targetObject.x-20;
y = targetObject.y-20;
draw_self();
draw_text_transformed(x, y+10, string(variable_instance_get(targetObject, targetVariable)), 0.5, 0.5, image_angle);