
script_execute(attacks[attack]);
count++;
if(hp <= 0){
	attack++;
	hp = 50000;
	count = 0;
}
