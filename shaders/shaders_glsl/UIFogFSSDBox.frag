#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UIParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[8];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB1[5].y > 0.5);
    vec4 f3 = vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    float f4 = f0.w;
    vec3 f5 = f0.xyz / vec3(f4);
    bvec3 f6 = bvec3(f4 == 0.0);
    vec4 f7 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
    bvec4 f8 = bvec4(CB1[5].y > 1.5);
    vec4 f9 = VARYING1 * vec4(f8.x ? f7.x : f3.x, f8.y ? f7.y : f3.y, f8.z ? f7.z : f3.z, f8.w ? f7.w : f3.w);
    vec2 f10 = abs(vec2((VARYING0.x * CB1[6].x) + CB1[6].y, (VARYING0.y * CB1[6].z) + CB1[6].w)) - CB1[7].xy;
    float f11 = length(max(f10, vec2(0.0))) + min(max(f10.x, f10.y), 0.0);
    float f12 = (f9.w * clamp(CB1[7].z - f11, 0.0, 1.0)) * clamp(f11 - CB1[7].w, 0.0, 1.0);
    vec4 f13 = f9;
    f13.w = f12;
    vec4 f14 = f13;
    f14.w = f12;
    vec3 f15 = f14.xyz * f14.xyz;
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    vec3 f19 = mix(CB0[19].xyz, f18.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f20 = f18;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = sqrt(clamp(f22.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    gl_FragData[0] = f26;
}

//$$DiffuseMapTexture=s0
