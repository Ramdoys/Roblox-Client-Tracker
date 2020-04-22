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

struct MaterialParams
{
    float textureTiling;
    float plasticRoughness;
    float normalShadowScale;
    float normalDetailTiling;
    float normalDetailScale;
    float farTilingDiffuse;
    float farTilingNormal;
    float farTilingSpecular;
    float farDiffuseCutoff;
    float farNormalCutoff;
    float farSpecularCutoff;
    float optBlendColorK;
    float farDiffuseCutoffScale;
    float farNormalCutoffScale;
    float farSpecularCutoffScale;
    float isNonSmoothPlastic;
};

uniform vec4 CB0[47];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[1].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f5 = mix(texture(NormalMapTexture, f3 * CB2[1].z), texture(NormalMapTexture, f3), vec4(clamp((f2 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = mix(texture(SpecularMapTexture, f3 * CB2[1].w), texture(SpecularMapTexture, f3), vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    vec3 f11 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f12 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[2].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec3 f18 = (f16.xyz * (f16.w * 120.0)).xyz;
    float f19 = f17.x;
    vec4 f20 = texture(ShadowMapTexture, VARYING7.xy);
    float f21 = (1.0 - ((step(f20.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f20.y)) * f17.y;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    vec3 f24 = (f12 * f12).xyz;
    float f25 = CB0[26].w * f2;
    float f26 = max(f10.y, 0.04500000178813934326171875);
    vec3 f27 = reflect(-f23, f11);
    float f28 = f26 * 5.0;
    vec3 f29 = vec4(f27, f28).xyz;
    vec4 f30 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f11, f23))));
    float f31 = f10.x * f25;
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f24, vec3(f31));
    vec3 f33 = -CB0[11].xyz;
    vec3 f34 = normalize(f33 + f23);
    float f35 = dot(f11, f33);
    float f36 = clamp(f35, 0.0, 1.0);
    float f37 = f26 * f26;
    float f38 = max(0.001000000047497451305389404296875, dot(f11, f34));
    float f39 = dot(f33, f34);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (f32 * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    float f46 = 1.0 - f31;
    float f47 = f25 * f46;
    vec3 f48 = vec3(f46);
    float f49 = f30.x;
    float f50 = f30.y;
    vec3 f51 = ((f32 * f49) + vec3(f50)) / vec3(f49 + f50);
    vec3 f52 = f48 - (f51 * f47);
    vec3 f53 = f11 * f11;
    bvec3 f54 = lessThan(f11, vec3(0.0));
    vec3 f55 = vec3(f54.x ? f53.x : vec3(0.0).x, f54.y ? f53.y : vec3(0.0).y, f54.z ? f53.z : vec3(0.0).z);
    vec3 f56 = f53 - f55;
    float f57 = f56.x;
    float f58 = f56.y;
    float f59 = f56.z;
    float f60 = f55.x;
    float f61 = f55.y;
    float f62 = f55.z;
    vec3 f63 = (mix(textureLod(PrefilteredEnvIndoorTexture, f29, f28).xyz * f18, textureLod(PrefilteredEnvTexture, f29, f28).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f19)) * f51) * f25;
    vec3 f64 = (((((((((f48 - (f43 * f47)) * CB0[10].xyz) * f36) + (CB0[12].xyz * (f46 * clamp(-f35, 0.0, 1.0)))) * f21) + (f52 * (((((((CB0[35].xyz * f57) + (CB0[37].xyz * f58)) + (CB0[39].xyz * f59)) + (CB0[36].xyz * f60)) + (CB0[38].xyz * f61)) + (CB0[40].xyz * f62)) + (((((((CB0[29].xyz * f57) + (CB0[31].xyz * f58)) + (CB0[33].xyz * f59)) + (CB0[30].xyz * f60)) + (CB0[32].xyz * f61)) + (CB0[34].xyz * f62)) * f19)))) + (CB0[27].xyz + (CB0[28].xyz * f19))) * f24) + ((((f43 * (((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25))) * f36)) * CB0[10].xyz) * f21) + f63)) + (f18 * mix(f24, f63 * (1.0 / (max(max(f63.x, f63.y), f63.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f52) * (f25 * (1.0 - f19))));
    vec4 f65 = vec4(f64.x, f64.y, f64.z, vec4(0.0).w);
    f65.w = VARYING2.w;
    vec2 f66 = min(VARYING0.wz, VARYING1.wz);
    float f67 = min(f66.x, f66.y) / f1;
    float f68 = clamp(exp2((CB0[13].z * f22) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f69 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f68) * 5.0).xyz;
    bvec3 f70 = bvec3(CB0[13].w != 0.0);
    vec3 f71 = sqrt(clamp(mix(vec3(f70.x ? CB0[14].xyz.x : f69.x, f70.y ? CB0[14].xyz.y : f69.y, f70.z ? CB0[14].xyz.z : f69.z), (f65.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f67)) + f67, 0.0, 1.0)).xyz, vec3(f68)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f72 = vec4(f71.x, f71.y, f71.z, f65.w);
    f72.w = VARYING2.w;
    _entryPointOutput = f72;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
