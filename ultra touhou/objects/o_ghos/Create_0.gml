host = false;
var port = 1337;
/*if(keyboard_check(vk_f1)){
	host = true;	
}*/

if(host){
	server = network_create_server(network_socket_tcp,port,32);
}
else{
	sock = network_create_socket(network_socket_tcp);
	client = network_connect(sock,"localhost",port);
}