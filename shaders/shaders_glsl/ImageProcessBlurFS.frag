#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[10];
uniform vec4 CB0[58];
uniform vec4 CB6[64];
uniform sampler2D Texture5Texture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 f2 = mix((f0 * f0) * 4.0, (f1 * f1) * 4.0, vec3(CB1[4].x));
    vec3 f3 = f2 * CB1[5].x;
    vec3 f4 = ((f2 * (f3 + vec3(CB1[5].y))) / ((f2 * (f3 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f5 = vec3(0.0);
    f5.x = dot(f4, CB1[1].xyz) + CB1[1].w;
    vec3 f6 = f5;
    f6.y = dot(f4, CB1[2].xyz) + CB1[2].w;
    vec3 f7 = f6;
    f7.z = dot(f4, CB1[3].xyz) + CB1[3].w;
    vec2 f8 = VARYING0 * CB0[50].zw;
    vec4 f9 = texture2D(Texture5Texture, f8);
    float f10 = f9.x;
    vec4 f11 = texture2D(Texture5Texture, f8 + vec2(CB1[0].z, 0.0));
    float f12 = f11.x;
    vec4 f13 = texture2D(Texture5Texture, f8 + vec2(-CB1[0].z, 0.0));
    float f14 = f13.x;
    vec4 f15 = texture2D(Texture5Texture, f8 + vec2(0.0, CB1[0].w));
    float f16 = f15.x;
    vec4 f17 = texture2D(Texture5Texture, f8 + vec2(0.0, -CB1[0].w));
    float f18 = f17.x;
    int f19 = int(floor(((f10 > 0.0) ? f10 : max(max(f12, f14), max(f16, f18))) * 255.5));
    vec4 f20 = mix(CB6[f19 * 1 + 0], CB6[(f19 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f12 - f14), abs(f16 - f18)), 0.0, 1.0)));
    gl_FragData[0] = vec4(mix(f7, f20.xyz, vec3(f20.w)), 1.0);
}

//$$Texture5Texture=s5
//$$Texture0Texture=s0
//$$Texture1Texture=s1
