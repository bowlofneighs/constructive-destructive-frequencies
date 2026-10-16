
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{

    vec2 uv = (fragCoord - 0.5 * iResolution.xy) / iResolution.y; // makes the screen left right -1 - +1 and up down +1 - -1
    float d = length(uv);

    vec3 col;
    if (d > 0.5){
         col = vec3(1.0, 1.0, 1.0); // if the distance from the center is less than 0.5, the color is white
    }
    if (0.6 > d && d > 0.5){ //if the distance from center is between 0.5 and 0.6
        float mapd = (d - 0.5) * 10.5;
        col = vec3(mapd, mapd, mapd);
    }

    col = vec3(sin((d * 100.0) + 20.0 * iTime), sin((d * 100.0) + 25.0 * iTime), sin((d * 100.0) + 30.0 * iTime));

/*
    if (d > 0.5 && d < 0.6){
        fragColor = vec4(1, 1, 1, 1);
    }
*/
    //fragColor = vec4(vec3(d), 1.0);


    fragColor = vec4(col, 1.0);
}

