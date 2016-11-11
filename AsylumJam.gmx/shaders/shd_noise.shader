attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
// attribute vec2 in_TextureCoord;              // (u,v)

//varying vec2 v_vTexcoord;
varying vec2 fragCoord;
varying vec4 v_vColour;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    //v_vTexcoord = in_TextureCoord;
    fragCoord = in_Position.xy;
    v_vColour = in_Colour;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
varying vec2 fragCoord;
varying vec4 v_vColour;

uniform float     iGlobalTime;

float poltergeist(in vec2 coordinate, in float seed)
{
    return fract(sin(dot(coordinate*seed, vec2(12.9898, 78.233)))*43758.5453);
}



void main()
{
    vec4 v_noiseColor = vec4(vec3(poltergeist(fragCoord, iGlobalTime)),v_vColour.a);
    gl_FragColor = v_noiseColor;
}

