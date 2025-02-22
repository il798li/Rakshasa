event_inherited()
centerX = x + sprite_width * image_xscale / 2
centerY = y + sprite_width * image_yscale / 2
image_xscale -= 1/9
image_yscale -= 1/9
x = centerX - sprite_width * image_xscale / 2
y = centerY - sprite_width * image_yscale / 2
