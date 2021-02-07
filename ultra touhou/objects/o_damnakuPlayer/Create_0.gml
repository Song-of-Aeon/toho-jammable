/// @description Insert description here
// You can write your code in this editor
spd = 1;
timer = 0;
#region surface stuff
surf = surface_create(960,720);
view_surface_id[0] = surf;
#endregion
shot = st_paper;
score = 0; 
invuln = 0;
audio_stop_all();
music = audio_play_sound(m_futatsuiwa_from_arcadia, 10, false);