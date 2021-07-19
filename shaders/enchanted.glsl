varying vec2 vTextureCoord;

uniform sampler2D uSampler;
uniform float uTime;

vec4 purple = vec4(0.7, 0.0, 0.6, 0.0);
float interval = 400.0;

void main (void)
{
  vec4 color = texture2D(uSampler, vTextureCoord);

  float a = (
      sin(
        (gl_FragCoord.x * 0.2 + gl_FragCoord.y * 0.2 - uTime * 40.0) / 10.0
      ) + 3.0
    ) / 5.0;
  
  gl_FragColor = color.rgba + (a * purple.rgba);

  if (color.a == 0.0) {
    gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
  }
}
