#version 150

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Exposure_DoFDistance;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlags;
};

struct SAParams
{
    float overlay;
    float unused1;
    float unused2;
    float unused3;
};

uniform vec4 CB0[47];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = VARYING4.w * CB0[23].y;
    float f1 = clamp(1.0 - f0, 0.0, 1.0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0.xy);
    float f3 = f2.w;
    vec4 f4 = vec4(mix(VARYING2.xyz, f2.xyz, vec3(f3)), VARYING2.w);
    vec4 f5 = vec4(f2.xyz, VARYING2.w * f3);
    bvec4 f6 = bvec4(CB3[0].x != 0.0);
    vec4 f7 = vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w);
    vec2 f8 = texture(NormalMapTexture, VARYING0.xy).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f1;
    vec4 f12 = texture(SpecularMapTexture, VARYING0.xy);
    vec3 f13 = normalize(((VARYING6.xyz * f11.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f11.y)) + (VARYING5.xyz * f10));
    vec3 f14 = f7.xyz;
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec3 f20 = (f18.xyz * (f18.w * 120.0)).xyz;
    float f21 = f19.x;
    vec4 f22 = texture(ShadowMapTexture, VARYING7.xy);
    float f23 = (1.0 - ((step(f22.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f22.y)) * f19.y;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    vec3 f26 = (f14 * f14).xyz;
    float f27 = CB0[26].w * f1;
    float f28 = max(f12.y, 0.04500000178813934326171875);
    vec3 f29 = reflect(-f25, f13);
    float f30 = f28 * 5.0;
    vec3 f31 = vec4(f29, f30).xyz;
    vec4 f32 = texture(PrecomputedBRDFTexture, vec2(f28, max(9.9999997473787516355514526367188e-05, dot(f13, f25))));
    float f33 = f12.x * f27;
    vec3 f34 = mix(vec3(0.039999999105930328369140625), f26, vec3(f33));
    vec3 f35 = -CB0[11].xyz;
    vec3 f36 = normalize(f35 + f25);
    float f37 = dot(f13, f35);
    float f38 = clamp(f37, 0.0, 1.0);
    float f39 = f28 * f28;
    float f40 = max(0.001000000047497451305389404296875, dot(f13, f36));
    float f41 = dot(f35, f36);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (f34 * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    float f48 = 1.0 - f33;
    float f49 = f27 * f48;
    vec3 f50 = vec3(f48);
    float f51 = f32.x;
    float f52 = f32.y;
    vec3 f53 = ((f34 * f51) + vec3(f52)) / vec3(f51 + f52);
    vec3 f54 = f50 - (f53 * f49);
    vec3 f55 = f13 * f13;
    bvec3 f56 = lessThan(f13, vec3(0.0));
    vec3 f57 = vec3(f56.x ? f55.x : vec3(0.0).x, f56.y ? f55.y : vec3(0.0).y, f56.z ? f55.z : vec3(0.0).z);
    vec3 f58 = f55 - f57;
    float f59 = f58.x;
    float f60 = f58.y;
    float f61 = f58.z;
    float f62 = f57.x;
    float f63 = f57.y;
    float f64 = f57.z;
    vec3 f65 = (mix(textureLod(PrefilteredEnvIndoorTexture, f31, f30).xyz * f20, textureLod(PrefilteredEnvTexture, f31, f30).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f53) * f27;
    vec3 f66 = (((((((((f50 - (f45 * f49)) * CB0[10].xyz) * f38) + (CB0[12].xyz * (f48 * clamp(-f37, 0.0, 1.0)))) * f23) + (f54 * (((((((CB0[35].xyz * f59) + (CB0[37].xyz * f60)) + (CB0[39].xyz * f61)) + (CB0[36].xyz * f62)) + (CB0[38].xyz * f63)) + (CB0[40].xyz * f64)) + (((((((CB0[29].xyz * f59) + (CB0[31].xyz * f60)) + (CB0[33].xyz * f61)) + (CB0[30].xyz * f62)) + (CB0[32].xyz * f63)) + (CB0[34].xyz * f64)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) * f26) + ((((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[10].xyz) * f23) + f65)) + (f20 * mix(f26, f65 * (1.0 / (max(max(f65.x, f65.y), f65.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f54) * (f27 * (1.0 - f21))));
    float f67 = f7.w;
    vec4 f68 = vec4(f66.x, f66.y, f66.z, vec4(0.0).w);
    f68.w = f67;
    vec2 f69 = min(VARYING0.wz, VARYING1.wz);
    float f70 = min(f69.x, f69.y) / f0;
    float f71 = clamp(exp2((CB0[13].z * f24) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f72 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f71) * 5.0).xyz;
    bvec3 f73 = bvec3(CB0[13].w != 0.0);
    vec3 f74 = sqrt(clamp(mix(vec3(f73.x ? CB0[14].xyz.x : f72.x, f73.y ? CB0[14].xyz.y : f72.y, f73.z ? CB0[14].xyz.z : f72.z), (f68.xyz * clamp((clamp((f0 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f70)) + f70, 0.0, 1.0)).xyz, vec3(f71)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f75 = vec4(f74.x, f74.y, f74.z, f68.w);
    f75.w = f67;
    _entryPointOutput = f75;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
