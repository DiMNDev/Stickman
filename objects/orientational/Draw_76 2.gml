if global.flip = 1 {
	surface_resize(application_surface, display_get_gui_height(), display_get_gui_width());
	view_set_visible(0,true);
	view_set_visible(1,false);
}
if global.flip = -1 {
	surface_resize(application_surface, display_get_gui_height(), display_get_gui_width());
	view_set_visible(0,false);
	view_set_visible(1,true);
}