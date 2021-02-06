/// @description Insert description here
// You can write your code in this editor
var c = surface_create(800,600);
shader_set(z_metaballs);
uniPoses = shader_get_uniform(z_metaballs,"ballPos");
uniThresh = shader_get_uniform(z_metaballs,"thresh");


var ary = array_create(3*numg);
for(i = 0; i < numg; i++){
    var va = i*3;
    var ob = instance_find(o_metaballing,i);
    if(ob != noone){
        ary[va] = ob.x;
        ary[va+1] = ob.y;
        ary[va+2] = nung;
    }
}
shader_set_uniform_f_array(uniPoses,ary);
shader_set_uniform_f(uniThresh,bruh12);
//surface_set_target(o_melodychaser.surf);
draw_surface(c, 0,0);
//surface_reset_target();
shader_reset();
surface_free(c);