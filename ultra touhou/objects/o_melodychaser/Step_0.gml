c_fontsinput();

if !danced {
    if loading = false {
		loading = true;
    } else {
		f_smparse(c_occultcore);
		danced = true;
		songstarting = true;
		loading = false;
	}
    

}
if songstarting {
    timecounter += delta_time;
    if timecounter/1000 >= offset {
        if count > 2 {count += global.truetime;
} else {
	count += 1;
}
    }
	if count >= 190 {
        audio_play_sound(audio, 0, false);
        songstarting = false;
    }
    
}

script_execute(state);

var i;
for (i=0; i<8; i++) {
    bop[i] += .05;
    bop[i] = clamp(bop[i], 0, 1);
}
bop[8] -= .05;
bop[8] = clamp(bop[i], 1, 2);

lanespacing = laneup - laneleft;
var note = collision_line(laneleft, bar-bpm*global.xmod/20-96, laneright, bar-bpm*global.xmod/20-96, o_note, false, false);
if note != noone {
    if note.object_index = o_freeze || note.object_index = o_roll {
        with note.tail {
            unusable = true;
            head = 0;
			instance_destroy();
        }
        combo = 0;
        bop[8] = 1.3;
        noterank = 4;
        hp -= 1;
        realscore -= 100/notecount*5;
        infoalpha += .2;
        infoalpha = clamp(infoalpha, 1.6, 4);
        combocolour[3] = combocolour[2];
        combocolour[2] = combocolour[1];
        combocolour[1] = combocolour[0];
        combocolour[0] = c_red;
    } else {
        combo = 0;
        bop[8] = 1.3;
        noterank = 4;
        hp -= 1;
        realscore -= 100/notecount*5;
        infoalpha += .2;
        infoalpha = clamp(infoalpha, 1.6, 4);
        combocolour[3] = combocolour[2];
        combocolour[2] = combocolour[1];
        combocolour[1] = combocolour[0];
        combocolour[0] = c_red;
    }
    instance_destroy(note);
        
}

if hp > 12 {
    hp = 12;
}

infoalpha -= .03;
infoalpha = clamp(infoalpha, 0, 4);

if !instance_exists(o_note) && danced {
    countwo++;	
    if countwo >= 300 {
		if realscore >= o_troublemaker.realscore {
			instance_create(0, 0, o_won);
		} else {
			instance_create(0, 0, o_lost);
		}
		room = room_vn3;
	}
}
if global.controller {
    gamepad_set_vibration(0, rumble[0]+rumble[1]/1.5+rumble[2]/2.5, rumble[3]+rumble[2]/1.5+rumble[1]/2.5);
    //gamepad_set_vibration(0, 1, 0);
    
    var k;
    for (k=0; k<array_length_1d(rumble); k++) {
        rumble[k] -= .1;
        rumble[k] = clamp(rumble[k], 0, 1);
    }
}

global.truetime = c_timebuster();

//console_log(window_get_x());