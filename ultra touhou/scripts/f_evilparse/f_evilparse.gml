function f_evilparse(thesong) {
	script_execute(thesong);
	global.red = s_red;
	global.blue = s_blue;
	global.purple = s_purple;
	
	mainstickstate = array_create(4);
	cstickstate = array_create(4);

	position = 0;
	reader = "";
	title = "";
	mode = "metadata";
	measure = 0;
	measurelength = 0;
	noteset[0] = "NOPE";
	arraypos = 0;
	xmod = global.xmod;
	if global.mmod != 0 {
	    xmod = global.mmod*3/bpm;
		global.xmod = global.mmod*3/bpm;

	}
	notecount = 0;
	entermeasure = 0;
	endmeasure = 0;
	measuredifference = 0;
	//notecolour = s_dark;
	lastmeasurelength = 0;
	amount = 0;
	placer = 0;
	freezel = 0;
	freezed = 0;
	freezeu = 0;
	freezer = 0;
	lanes = o_troublemaker.lanes;
	log("lol");
	//log(song);
	log("lol");

	while position <= string_length(song) {
	    if mode = "metadata" {
	        reader = string_insert(string_char_at(song, position), reader, string_length(reader)+1);
	        if string_char_at(song, position) = ";" || string_char_at(song, position) = "#" {
	            reader = "";
	        }
	        switch reader {
	            case "TITLE:":
	                position++;
	                while string_char_at(song, position) != ";" {
	                    title = string_insert(string_char_at(song, position), title, string_length(title)+1);
	                    position++;
	                }
	                reader = "";
	                //console_log(title);
	                break;
	            case "NOTES:":
	                mode = "nearnotes";
	                break;
	        }
        
	    }
    
	    if mode = "nearnotes" {
	        if string_copy(song, position, 7) = "measure" {
	            mode = "notes";
	        }
        
	    }
    
	    if mode = "notes" {
	        if string_copy(song, position, 7) = "measure" {
	            endmeasure = arraypos;
	            var m;
	            for (m=entermeasure; m<endmeasure; m++) {
	                var measuredifference = string_copy(noteset[arraypos-1], lanes+1, string_length(noteset[arraypos-1])-lanes);
	                noteset[m] = string_copy(noteset[m], 0, lanes) + measuredifference;
	            }
	            measure += 1;
	            measurelength = 0;
	            position += 8 + string_length(string(measure));
	            entermeasure = arraypos;
	        }
	        if string_digits(string_char_at(song, position)) = string_char_at(song, position) {
	            measurelength += lanes/(lanes*4);
	            noteset[arraypos] = string_copy(song, position, lanes) + string(ceil(measurelength));
            
	            position += lanes;
	            arraypos++;
            
	        }
        
	    }
    
	    //alright so we could keep a vount of how far the notes have traveled since the start and gradually create notes with that difference
	    //somethin with a for loop in step with it checking if position*whatever-time*vspd is around the screen size
	    position++;
	}

	position = 0;
	//console_log(array_length_1d(noteset));

	var i;
	for (i=0; i<array_length(noteset); i++) {
	    notemaker[0] = real(string_char_at(noteset[i], 1));
	    notemaker[1] = real(string_char_at(noteset[i], 2));
	    notemaker[2] = real(string_char_at(noteset[i], 3));
	    notemaker[3] = real(string_char_at(noteset[i], 4));
	    if lanes = 8 {
	        notemaker[4] = real(string_char_at(noteset[i], 5));
	        notemaker[5] = real(string_char_at(noteset[i], 6));
	        notemaker[6] = real(string_char_at(noteset[i], 7));
	        notemaker[7] = real(string_char_at(noteset[i], 8));
	    }
	    notemaker[9] = real(string_copy(noteset[i], lanes+1, string_length(noteset[i])-lanes));
	    if notemaker[9] != lastmeasurelength {
	        amount = 0;
	    }
	    lastmeasurelength = notemaker[9];
	    var j;
	    for (j=0; j<=lanes-1; j++) {
	        if notemaker[j] > 8 {
	            notemaker[j] = 1;
	        }
			if notemaker[j] > 4 {
				notemaker[j] = 0;
			}
	        switch notemaker[j] {
	            case 0:
	                notemaker[j] = o_null;
	                break;
	            case 1:
	                notemaker[j] = o_note;
	                break;
	            case 2:
	                notemaker[j] = o_freeze;
	                break;
	            case 3:
	                notemaker[j] = o_tail;
	                break;
	            case 4:
	                notemaker[j] = o_roll;
	                break;
            
	        }
			
	    }
	    if notemaker[j] != o_null {
	        f_notecolouring(notemaker[9]);
	        with instance_create(o_troublemaker.laneleft, placer*32*xmod+o_troublemaker.bar, notemaker[0]) {
	            dir = 0;
	            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
	            y -= vspd*60;
	            image_xscale = global.mini;
	            image_yscale = global.mini;
	            if object_index = o_freeze || object_index = o_roll {
	                other.freezel = id;
	            } else if object_index = o_tail {
	                with other.freezel {
	                    tail = other.id;
	                }
	            } else {
					sprite_index = other.notecolour;
				}
	        }
	        with instance_create(o_troublemaker.lanedown, placer*32*xmod+o_troublemaker.bar, notemaker[1]) {
	            dir = 1;
	            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
	            y -= vspd*60;
	            image_xscale = global.mini;
	            image_yscale = global.mini;
	            if object_index = o_freeze || object_index = o_roll {
	                other.freezed = id;
	            } else if object_index = o_tail {
	                with other.freezed {
	                    tail = other.id;
	                }
	            } else {
					sprite_index = other.notecolour;
				}
	        }
	        with instance_create(o_troublemaker.laneup, placer*32*xmod+o_troublemaker.bar, notemaker[2]) {
	            dir = 2;
	            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
	            y -= vspd*60;
	            image_xscale = global.mini;
	            image_yscale = global.mini;
	            if object_index = o_freeze || object_index = o_roll {
	                other.freezeu = id;
	            } else if object_index = o_tail {
	                with other.freezeu {
	                    tail = other.id;
	                }
	            } else {
					sprite_index = other.notecolour;
				}
	        }
	        with instance_create(o_troublemaker.laneright, placer*32*xmod+o_troublemaker.bar, notemaker[3]) {
	            dir = 3;
	            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
	            y -= vspd*60;
	            image_xscale = global.mini;
	            image_yscale = global.mini;
	            if object_index = o_freeze || object_index = o_roll {
	                other.freezer = id;
	            } else if object_index = o_tail {
	                with other.freezer {
	                    tail = other.id;
	                }
	            } else {
					sprite_index = other.notecolour;
				}
	        }
	    }
	    placer += 1/notemaker[9];
	    amount += 1;
	}
	//console_log(instance_number(o_note));
	o_troublemaker.notecount = instance_number(o_note);
	o_troublemaker.notecount += instance_number(o_tail)/5;
}