varying vec2 vTextureCoord;

uniform sampler2D uSampler;
uniform float uTime;

vec4 purple = vec4(0.5, 0.0, 0.4, 0.0);
float interval = 400.0;

void main (void)
{
  vec4 color = texture2D(uSampler, vTextureCoord);

  float a = (
      sin(
        (gl_FragCoord.x * 0.2 + gl_FragCoord.y * 0.2 - uTime * 100.0) * 0.1
      ) + 3.0
    ) / 3.0;
  
  gl_FragColor = color.rgba + (a * purple.rgba);
}
