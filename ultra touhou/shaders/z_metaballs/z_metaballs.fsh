//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
int numOfBalls = 60;
uniform vec3 ballPos[60];
uniform float thresh;

vec4 col = vec4(59.,48.,122.,255)/255.;
float betterDist(vec2 a, vec2 b, float threshh){
    return threshh/(pow(a.x-b.x,2.)+pow(a.y-b.y,2.));
}
void main()
{
    vec2 brexcoord = v_vTexcoord*vec2(640,360);
    float numb;
    for(int i = 0; i < numOfBalls; i++){
        numb+=betterDist(ballPos[i].xy,brexcoord,ballPos[i].z);//distance(brexcoord, (ballPos[i]).xy)*(ballPos[i]).z;
    }
	vec4 val = (numb>thresh)? col : vec4(0.);
    gl_FragColor = vec4(val.xyz,numb*3.);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
