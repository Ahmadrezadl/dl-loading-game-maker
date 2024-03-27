if (global.loading_showing) {
    if (global.loading_hide_time != -1 and current_time >= global.loading_hide_time) {
        hide_loading();
	}
}