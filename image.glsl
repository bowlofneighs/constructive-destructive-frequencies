// Welcome! This is a Shadertoy-style shader.
// mainImage runs once for each pixel, every frame.
// Try changing a number, then watch the preview on the right.

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
        col = vec3(1.0 * 2.0 *d, 2.0 * d, 1.0 * 2.0 * d);
    }


    fragColor = vec4(col, 1.0);
}
