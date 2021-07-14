varying vec2 vTextureCoord;

uniform sampler2D uSampler;

void main(void){
  // get fragment color from texture
  vec4 col = texture2D(uSampler, vTextureCoord);
  gl_FragColor = col;

  if (
    // test if r = g = b
    col.r == col.g &&
    col.g == col.b &&
    col.r < 0.5 // pillow shading
  ) {
    gl_FragColor = vec4(
      replaceWithColor.rgb,
      col.a
    ) * col.r; // get color and then titn it by the grayscale value
  }
}
