image_xscale -= .1;
image_yscale -= .1;
image_alpha -= .07;
if image_xscale <= 0 {
	instance_destroy();
}