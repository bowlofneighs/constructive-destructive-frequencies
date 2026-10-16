
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Pixel position, from 0 to 1 across the screen.
    vec2 uv = (fragCoord - 0.5 * iResolution.xy) / iResolution.y;
    float d = length(uv);
    
    vec3 col;
    if (d > 0.5){
         col = vec3(1.0, 1.0, 1.0);
    }
    if (0.6 > d && d > 0.5){
        col = vec3(2.0 * d, 2.0 * d, 2.0 * d);
    }



    if (d > 0.5 && d < 0.6){
        fragColor = vec4(1, 1, 1, 1);
    }
    //fragColor = vec4(vec3(d), 1.0);


   // fragColor = vec4(col, 1.0);
}
