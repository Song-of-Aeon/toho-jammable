function sm_drivin() {
	song = file_text_open_read("drivin.txt"); 
	return file_text_read_string(song);
}