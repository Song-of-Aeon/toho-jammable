var templistv = ds_map_values_to_array(steps);
for(i = 0; i < array_length(templistv); i++){
	templistv[i]();	
}