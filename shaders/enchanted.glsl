varying vec2 vTextureCoord;

uniform sampler2D uSampler;
uniform float uTime;
uniform float uThickness

vec4 purple = vec4(0.5, 0.0, 0.4, 0.0);
float interval = 400.0;

void main (void)
{
  vec4 color = texture2D(uSampler, vTextureCoord);

  float a = (
      sin(
        (gl_FragCoord.x / uThickness + gl_FragCoord.y / uThickness - uTime * 100.0) * 0.1
      ) + 3.0
    ) / 3.0;
  
  gl_FragColor = color.rgba + (a * purple.rgba);
}
