#version 450

layout (location = 0) in vec4 coord;

void main()
{
    gl_Position = vec4(coord.x, -coord.y, coord.z, coord.w);
}