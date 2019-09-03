#version 150

in vec3 position;
in vec3 color;

out vec3 Color;

// Transformation matrix
uniform mat4 Hwm;
uniform mat4 Hvw;
uniform mat4 Hcv;

// Scale the terrain
uniform float scale;

void main()
{
	Color = color;
    gl_Position = Hcv * Hvw * Hwm * vec4(position * 0.1, 1.0);

}