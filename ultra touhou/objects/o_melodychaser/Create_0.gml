surf = surface_create(800,600);
view_surface_id[0] = surf;



global.xmod = 6;
mmod = 0;
bar = 128;
global.mmod = 400;
global.mini = 1;
minibig = (global.mini-1)*64;
bop[0] = 1;
bop[1] = 1;
bop[2] = 1;
bop[3] = 1;
bop[4] = 1;
bop[5] = 1;
bop[6] = 1;
bop[7] = 1;
bop[8] = 1;
infoalpha = 0;
combocolour = array_create(4);
combo = 0;
realscore = 0;
draw_set_font(ft_ronaldo);
state = st_receptorinput;
offset = 0;
noterank = 5;
ranktext = 11037;
timecounter = 0;
songstarting = false;
laneleft = 246-96-minibig*1.5;
lanedown = 246-32-minibig*.5;
laneup = 246+32+minibig*.5;
laneright = 246+96+minibig*1.5;
bluepos = 640;
lanespacing = 64;
lanes = 4;

blueposaved = bluepos;
hp = 12;
songbg = s_kaguya;
script_execute(c_occultcore);
arraypos = 0;
comborank = 3;

count = 0;
countwo = 0;
global.truetime = 1;

mainstickstate = array_create(4);
cstickstate = array_create(4);
rumble = array_create(4);

danced = false;
global.receptor = s_receptor;