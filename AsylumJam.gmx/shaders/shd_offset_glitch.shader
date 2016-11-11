attribute vec3 in_Position;                  // (x,y,z)
//attribute vec4 in_Colour;                    // (r,g,b,a)
//attribute vec2 in_TextureCoord;              // (u,v)

//varying vec2 v_vTexcoord;
varying vec2 fragCoord;
//varying vec4 v_vColour;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    //v_vTexcoord = in_TextureCoord;
    fragCoord = in_Position.xy;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//varying vec2 v_vTexcoord;
varying vec2 fragCoord;

uniform sampler2D iNoise;
uniform vec2      iResolution;
uniform float     iGlobalTime;

void main()
{
    vec4 Color = vec4(0.0);
    
    vec2 uv = fragCoord.xy / iResolution.xy;
    vec2 block = floor(fragCoord.xy / vec2(16));
    vec2 uv_noise = block / vec2(64);
    uv_noise += floor(vec2(iGlobalTime) * vec2(1234.0, 35433.0)) / vec2(64);
    //uv_noise += floor(vec2(iGlobalTime) * vec2(11234.0, 25433.0)) / vec2(64);
    
    float block_thresh = pow(fract(iGlobalTime * 1236.0453), 2.0) * 0.2;
    float line_thresh = pow(fract(iGlobalTime * 2236.0453), 3.0) * 0.7;
    
    //float block_thresh = pow(fract(iGlobalTime * 2.0453), 2.0) * 0.2;
    //float line_thresh = pow(fract(iGlobalTime * 2.0453), 3.0) * 0.7;
    
    //vec2 uv_r = uv, uv_g = uv, uv_b = uv;
    vec2 uv_r = uv;
    vec2 uv_g = uv;
    vec2 uv_b = uv;
    
    // glitch some blocks and lines
    if (texture2D(iNoise, uv_noise).r < block_thresh 
            || texture2D(iNoise, vec2(uv_noise.y, 0.0)).g < line_thresh)
    {
        vec2 dist = (fract(uv_noise) - 0.5) * 0.3;
        uv_r += dist * 0.1;
        uv_g += dist * 0.2;
        uv_b += dist * 0.125;
    }
    
    Color.r = texture2D(gm_BaseTexture, uv_r).r;
    Color.g = texture2D(gm_BaseTexture, uv_g).g;
    Color.b = texture2D(gm_BaseTexture, uv_b).b;
    Color.a = texture2D(gm_BaseTexture, uv_r).a;// Added alpha
    
    // loose luma for some blocks
    if (texture2D(iNoise, uv_noise).g < block_thresh)
    {
        Color.rgb = Color.ggg;
        
        //Color.r = Color.g;
        //Color.g = Color.g;
        //Color.b = Color.g;
    }
    
    // discolor block lines
    if (texture2D(iNoise, vec2(uv_noise.y, 0.0)).b * 3.5 < line_thresh)
    {
        Color.rgb = vec3(0.0, dot(Color.rgb, vec3(1.0)), 0.0);
    }
    
    // interleave lines in some blocks
    if (texture2D(iNoise, uv_noise).g * 1.5 < block_thresh
            || texture2D(iNoise, vec2(uv_noise.y, 0.0)).g * 2.5 < line_thresh)
    {
        float line = fract(fragCoord.y / 3.0);
        vec3 mask = vec3(3.0, 0.0, 0.0);
        
        if (line > 0.333)
        {
            mask = vec3(0.0, 3.0, 0.0);
        }
        
        if (line > 0.666)
        {
            mask = vec3(0.0, 0.0, 3.0);
        }
        
        Color.rgb *= mask;
    }
    gl_FragColor = Color;
}
