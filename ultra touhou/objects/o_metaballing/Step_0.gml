/// @description Insert description here
// You can write your code in this editor
if(x <= 0 || x >= 640){
    direction = darctan2(dsin(direction),-dcos(direction));
}
if(y <= 0 || y >= 360){
    direction = darctan2(-dsin(direction),dcos(direction));
}
