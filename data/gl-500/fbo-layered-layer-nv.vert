#version 450 core
#extension GL_NV_viewport_array2 : require

precision highp float;
precision highp int;
layout(std140, column_major) uniform;

out block
{ 
	flat int Instance;
} Out;

out gl_PerVertex
{
	vec4 gl_Position;
};

void main()
{	
	Out.Instance = gl_InstanceID;

	gl_Position = vec4(mix(vec2(-1.0), vec2(3.0), bvec2(gl_VertexID == 1, gl_VertexID == 2)), 0.0, 1.0);
	gl_Layer = gl_InstanceID;
}
