function st_enemyinput() {
	lefty = collision_point(laneleft, bar-64+offset, o_note, false, false);
	if lefty && lefty != pleft {
	    f_hitdetection(laneleft, 0, -90);
	    bop[0] = .8;
		pleft = lefty;
	}
	downy = collision_point(lanedown, bar-64+offset, o_note, false, false);
	if downy && downy != pdown {
	    f_hitdetection(lanedown, 0, 0);
	    bop[1] = .8;
		pdown = downy;
	}
	uppy = collision_point(laneup, bar-64+offset, o_note, false, false);
	if uppy && uppy != pup {
	    f_hitdetection(laneup, 0, 180);
	    bop[2] = .8;
		pup = uppy;
	}
	righty = collision_point(laneright, bar-64+offset, o_note, false, false);
	if righty && righty != pright {
	    f_hitdetection(laneright, 0, 90);
	    bop[3] = .8;
		pright = righty;
	}
	if offset <= 0 {
		offset = random(140);
	}
	offset--;
}